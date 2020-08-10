package main

import (
	_ "github.com/joho/godotenv/autoload"
	"github.com/kelseyhightower/envconfig"
	log "github.com/sirupsen/logrus"

	"github.com/nytimes/dv-sumologic/tools/ad-syncer/ad"
	"github.com/nytimes/dv-sumologic/tools/ad-syncer/parser"
)

type config struct {
	User        string `required:"true"`
	Pass        string `required:"true"`
	URL         string `default:"ldap://ad.prd.iad1.nyt.net:389"`
	GroupOUDN   string `default:"OU=SumoLogic RBAC,OU=2FA Objects,OU=NYTMG,DC=ent,DC=nytint,DC=com" envconfig:"ad_group_oudn"`
	UserOUDN    string `default:"OU=NYTMG,DC=ent,DC=nytint,DC=com" envconfig:"ad_user_oudn"`
	GroupPrefix string `default:"sumo" split_words:"true"`
	DataFile    string `required:"true" split_words:"true"`
}

func main() {

	// Parse config
	config := &config{}
	err := envconfig.Process("ad", config)
	if err != nil {
		log.WithError(err).Fatal("Error parsing configuration parameters")
	}

	// Create a new AD client
	ad, err := ad.NewClient(
		config.User,
		config.Pass,
		config.URL,
		config.GroupOUDN,
		config.GroupPrefix,
		config.UserOUDN,
	)
	if err != nil {
		log.WithError(err).Fatal("Error creating AD client")
	}
	defer ad.Close()

	// Import data file
	roles, err := parser.Import(config.DataFile)
	if err != nil {
		log.WithError(err).Fatal("Error parsing JSON data")
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
}
