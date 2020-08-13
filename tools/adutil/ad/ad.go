package ad

import (
	"fmt"

	"github.com/go-ldap/ldap/v3"

	"github.com/nytimes/dv-sumologic/tools/adutil/types"
)

type Client struct {
	conn        *ldap.Conn
	groupOUDN   string
	groupPrefix string
	userOUDN    string
	userCache   map[string]string
}

func NewClient(user, pass, url, groupOUDN, groupPrefix, userOUDN string) (*Client, error) {
	conn, err := ldap.DialURL(url)
	if err != nil {
		return nil, err
	}

	err = conn.Bind(user, pass)
	if err != nil {
		return nil, err
	}

	return &Client{
		conn:        conn,
		groupOUDN:   groupOUDN,
		groupPrefix: groupPrefix,
		userOUDN:    userOUDN,
		userCache:   map[string]string{},
	}, nil
}

func (ad *Client) Close() {
	ad.conn.Close()
}

func (ad *Client) AddGroupMember(groupName, email string) error {
	// Fetch the DN for the user
	userDN, err := ad.userDN(email)
	if err != nil {
		return err
	}
	if userDN == "" {
		return fmt.Errorf("No user found for %s", email)
	}

	groupDN := ad.groupDN(groupName)

	members, err := ad.groupMembers(groupDN)
	if err != nil {
		return err
	}

	members = append(members, userDN)
	return ad.modifyMembers(groupDN, members)
}

func (ad *Client) RemoveGroupMember(groupName, email string) error {
	// Fetch the DN for the user
	userDN, err := ad.userDN(email)
	if err != nil {
		return err
	}
	if userDN == "" {
		return fmt.Errorf("No user found for %s", email)
	}

	groupDN := ad.groupDN(groupName)

	members, err := ad.groupMembers(groupDN)
	if err != nil {
		return err
	}

	// remove the user requested
	updated := make([]string, 0, len(members)-1)
	var found bool
	for _, v := range members {
		if !found && userDN == v {
			found = true
			continue
		}
		updated = append(updated, v)
	}

	if !found {
		return fmt.Errorf("User %s is not a part of %s", email, groupName)
	}

	return ad.modifyMembers(groupDN, updated)
}

func (ad *Client) SyncGroup(group *types.Role) []error {
	var members []string
	var errs []error

	for _, email := range group.Members {
		// Fetch the user's DN
		userDN, err := ad.userDN(email)

		// Log errors for a specific user and move along
		if err != nil {
			errs = append(errs, err)
			continue
		}

		// nil err and empty DN means the user couldn't be found
		if userDN == "" {
			errs = append(
				errs,
				fmt.Errorf("No user found for email '%s'", email),
			)
			continue
		}

		// Cache for later use
		members = append(members, userDN)
	}

	groupDN := ad.groupDN(group.Name)

	err := ad.modifyMembers(groupDN, members)

	if err != nil {
		errs = append(errs, err)
	}
	return errs
}
