package main

import (
	"fmt"
	"os"

	log "github.com/sirupsen/logrus"
	"github.com/urfave/cli/v2"

	"github.com/nytimes/dv-sumologic/tools/adutil/ad"
	"github.com/nytimes/dv-sumologic/tools/adutil/parser"
)

func main() {
	app := &cli.App{
		Name:  "adutil",
		Usage: "A tool to manage AD group membership.",
		Commands: []*cli.Command{
			{
				Name:   "add",
				Usage:  "add a user to an AD group",
				Action: addUser,
				Flags: []cli.Flag{
					&cli.StringFlag{
						Name:     "group",
						Required: true,
						Usage:    "The name (CN) of the AD group to add to.",
						EnvVars:  []string{"AD_GROUP"},
					},
					&cli.StringFlag{
						Name:     "user",
						Required: true,
						Usage:    "The email of the user to add.",
						EnvVars:  []string{"AD_USER_EMAIL"},
					},
				},
			},
			{
				Name:   "remove",
				Usage:  "remove a user from an AD group",
				Action: removeUser,
				Flags: []cli.Flag{
					&cli.StringFlag{
						Name:     "group",
						Required: true,
						Usage:    "The name (CN) of the AD group to add to.",
						EnvVars:  []string{"AD_GROUP"},
					},
					&cli.StringFlag{
						Name:     "user_email",
						Required: true,
						Usage:    "The email of the user to add.",
						EnvVars:  []string{"AD_USER_EMAIL"},
					},
				},
			},
			{
				Name:   "sync",
				Usage:  "sync AD group membership",
				Action: syncGroups,
				Flags: []cli.Flag{
					&cli.StringFlag{
						Name:     "data_file",
						Required: true,
						Usage:    "The filename to read membership data from",
						EnvVars:  []string{"DATA_FILE"},
					},
				},
			},
		},
		Flags: []cli.Flag{
			&cli.StringFlag{
				Name:    "ad_user",
				Usage:   "The username to use to authenticate with.",
				EnvVars: []string{"AD_USER"},
			},
			&cli.StringFlag{
				Name:        "ad_pass",
				DefaultText: "****",
				Usage:       "The password to use to authenticate with.",
				EnvVars:     []string{"AD_PASS"},
			},
			&cli.StringFlag{
				Name:    "ad_url",
				Usage:   "The URL of the exposed LDAP service",
				EnvVars: []string{"AD_URL"},
			},
			&cli.StringFlag{
				Name:    "ad_group_oudn",
				Usage:   "The OU to search within for groups.",
				EnvVars: []string{"AD_GROUP_OUDN"},
			},
			&cli.StringFlag{
				Name:    "ad_user_oudn",
				Usage:   "The OU to search within for users.",
				EnvVars: []string{"AD_USER_OUDN"},
			},
			&cli.StringFlag{
				Name:    "ad_group_prefix",
				Usage:   "The OU to search within for users.",
				EnvVars: []string{"AD_GROUP_PREFIX"},
			},
		},
	}

	err := app.Run(os.Args)
	if err != nil {
		log.Fatal(err)
	}
}

func initClient(ctx *cli.Context) *ad.Client {
	// Create a new AD client
	ad, err := ad.NewClient(
		ctx.String("ad_user"),
		ctx.String("ad_pass"),
		ctx.String("ad_url"),
		ctx.String("ad_group_oudn"),
		ctx.String("ad_group_prefix"),
		ctx.String("ad_user_oudn"),
	)
	if err != nil {
		log.WithError(err).Fatal("Error creating AD client")
	}
	return ad
}

func addUser(ctx *cli.Context) error {
	ad := initClient(ctx)
	defer ad.Close()

	// add a user
	return ad.AddGroupMember(
		ctx.String("group"),
		ctx.String("user"),
	)
}

func removeUser(ctx *cli.Context) error {
	ad := initClient(ctx)
	defer ad.Close()

	// remove a user
	return ad.RemoveGroupMember(
		ctx.String("group"),
		ctx.String("user"),
	)
}

func syncGroups(ctx *cli.Context) error {
	ad := initClient(ctx)
	defer ad.Close()

	// Import data file
	roles, err := parser.Import(ctx.String("data_file"))
	if err != nil {
		return err
	}

	// Sync the roles
	for _, role := range roles {
		errs := ad.SyncGroup(role)
		if len(errs) != 0 {
			for _, err := range errs {
				log.WithError(err).Warn("Sync Error")
			}
		}
	}
	return nil
}
