package ad

import (
	"fmt"

	"github.com/go-ldap/ldap/v3"
)

func (ad *Client) userDN(email string) (string, error) {
	req := ldap.NewSearchRequest(
		ad.userOUDN,
		ldap.ScopeWholeSubtree,
		ldap.NeverDerefAliases,
		0,
		0,
		false,
		fmt.Sprintf("(&(objectClass=user)(mail=%s))", email),
		[]string{"distinguishedName"},
		nil,
	)

	// See if we already have the DN for this user
	if dn, ok := ad.userCache[email]; ok {
		return dn, nil
	}

	res, err := ad.conn.Search(req)
	if err != nil {
		return "", err
	}

	// No matching user in the subtree
	if len(res.Entries) < 1 {
		return "", nil
	}

	dn := res.Entries[0].DN

	// Cache it in case we need this DN again
	ad.userCache[email] = dn

	return dn, nil
}

func (ad *Client) groupDN(group string) string {
	if ad.groupPrefix != "" {
		return fmt.Sprintf("CN=%s-%s,%s", ad.groupPrefix, group, ad.groupOUDN)
	}
	return fmt.Sprintf("CN=%s,%s", group, ad.groupOUDN)
}

func (ad *Client) modifyMembers(groupDN string, members []string) error {
	req := ldap.NewModifyRequest(groupDN, nil)
	req.Replace("member", members)
	return ad.conn.Modify(req)
}

func (ad *Client) groupMembers(groupDN string) ([]string, error) {
	req := ldap.NewSearchRequest(
		groupDN,
		ldap.ScopeWholeSubtree,
		ldap.NeverDerefAliases,
		0,
		0,
		false,
		"(&(objectClass=group))",
		[]string{
			"distinguishedName",
			"member",
		},
		nil,
	)

	res, err := ad.conn.Search(req)
	if err != nil {
		return nil, err
	}

	// No matching user in the subtree
	if len(res.Entries) < 1 {
		return nil, fmt.Errorf("No Group Found for DN: %s", groupDN)
	}

	return res.Entries[0].GetAttributeValues("member"), nil
}
