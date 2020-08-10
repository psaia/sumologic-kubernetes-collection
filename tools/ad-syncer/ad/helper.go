package ad

import (
	"fmt"

	"github.com/go-ldap/ldap/v3"
)

func (ad *AD) userDN(email string) (string, error) {
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

	res, err := ad.conn.Search(req)
	if err != nil {
		return "", err
	}

	// No matching user in the subtree
	if len(res.Entries) < 1 {
		return "", nil
	}

	return res.Entries[0].DN, nil
}

func (ad *AD) groupDN(group string) string {
	if ad.groupPrefix != "" {
		return fmt.Sprintf("CN=%s-%s,%s", ad.groupPrefix, group, ad.groupOUDN)
	}
	return fmt.Sprintf("CN=%s,%s", group, ad.groupOUDN)
}

func (ad *AD) modifyMembers(groupDN string, members []string) error {
	req := ldap.NewModifyRequest(groupDN, nil)
	req.Replace("member", members)
	return ad.conn.Modify(req)
}
