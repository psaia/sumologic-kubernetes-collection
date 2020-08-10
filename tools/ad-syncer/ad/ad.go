package ad

import (
	"fmt"

	"github.com/go-ldap/ldap/v3"

	"github.com/nytimes/dv-sumologic/tools/ad-syncer/types"
)

type AD struct {
	conn        *ldap.Conn
	groupOUDN   string
	groupPrefix string
	userOUDN    string
}

var (
	// Cache userdns so that we don't have to keep looking for them
	dnCache = map[string]string{}
)

func NewClient(user, pass, url, groupOUDN, groupPrefix, userOUDN string) (*AD, error) {
	conn, err := ldap.DialURL(url)
	if err != nil {
		return nil, err
	}

	err = conn.Bind(user, pass)
	if err != nil {
		return nil, err
	}

	return &AD{
		conn:        conn,
		groupOUDN:   groupOUDN,
		groupPrefix: groupPrefix,
		userOUDN:    userOUDN,
	}, nil
}

func (ad *AD) Close() {
	ad.conn.Close()
}

func (ad *AD) SyncGroup(group *types.Role) []error {
	var members []string
	var errs []error

	for _, email := range group.Members {
		// See if we already have the DN for this user
		if userDN, ok := dnCache[email]; ok {
			members = append(members, userDN)
			continue
		}

		// Cache miss, fetch it from AD
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
		dnCache[email] = userDN
		members = append(members, userDN)
	}

	groupDN := ad.groupDN(group.Name)

	err := ad.modifyMembers(groupDN, members)

	if err != nil {
		errs = append(errs, err)
	}
	return errs
}
