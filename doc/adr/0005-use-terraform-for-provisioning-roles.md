# 5. Use Terraform for provisioning roles and associated AD groups

Date: 2020-06-18

## Status

Draft

## Context

Sumo Logic roles are currently provisioned manually. This includes:
- Role names. Most are based on team names.
- Search filters. These are manually created based on what logs the team should
  have access to.

## Decision

Provision Sumo Logic roles and associated Active Directory groups using 
Terraform. 

Terraform is used to manage account configuration for similar SaaS vendors at 
the Times, and can be applied to Sumo Logic in a similar manner.

Terraform would be used to provision:
- Sumo Logic roles and their associated search filters, as well as any advanced
  capabilities (managing collectors, etc.)
- Active Directory groups associated with the particular roles, and the owners 
  of the groups.

## Consequences

Roles and their permissions are statically configured in code, and version
control provides a clear audit trail for any changes that are made.

Changes to roles, particularly their associated permission sets would be 
reviewed through a PR-review process similar to what is used for other 
repositories. 

The workflow for teams remains unchanged, which is particularly important for
teams that are new or uncomfortable with Terraform. Teams can still open Jira
tickets for changes, and members of DV would make PRs against the configuration.
With the new process, however, teams would have the ability to file PRs
themselves with requested changes for DV to review and merge.

Existing roles and their configurations will need to be converted into this 
approach as well, of which some may require changes to be communicated and 
negotiated with the teams which the roles were created for.
