# 9. Team role provisioning and management

Date: 2020-09-23

## Status

Accepted

Amends [8. Controlling role access through AD](0008-controlling-role-access-through-ad.md)

## Context

As discussed in [8. Controlling role access through AD](0008-controlling-role-access-through-ad.md),
the issue of how to manage role membership for the Sumo Logic platform is one
that we feel is best solved through the use of Active Directory groups.

In ADR #8, we laid out a plan to provide teams access to their application's
collectors, allowing them to query their logs, through nesting team AD groups
within the AD groups which we create at a collector level.

Through this nested-groups model, we hoped that Azure would communicate this
inheritance in the group claim sent to Sumo Logic as an attribute of a user's
SAML response. The net effect, we hoped, would be that when Team A's AD group
was added to Service X's AD group, Azure would understand this and include
Service X in the list of groups of which Team A's members were a part of. This
inheritance model would mean that it would no longer be necessary to adjust the
search filter attached to Team A's role to expand or contract permissions, Team A
could simply be added or removed, respectively, from a service's AD group and
inherit the search filter for that service.

In practice, however, we've found that although Active Directory itself supports
nesting of groups, there are limitations to the ways in which Azure is able to
process inheritance when generating role claims for apps. We've observed that
when Team A's AD group is added as a member of Service X's AD group, Azure does
not include Service X in the roles claim for Team A's memebers.

## Decision

To work around the technical limitations of AD group inheritance with Azure apps,
we're proposing to no longer move forward with our plan to use nested AD groups
to provide teams with the necessary permissions to query their collectors' logs.

Instead, AD groups will be completely flat, in that the only objects attached
will be users themselves, and team's permissions will be managed exclusively
through the search filter attached to the team role.

We would continue to provision two types of Active Directory groups to be used
specifically for Sumo Logic: collector and team groups.

### Collector Groups

Collector groups would continue to be provisioned for each new collector. While
we don't anticipate these to be widely used, these provide a mechanism for
satisfying one-off access requests to a collector's logs without needing to
create and maintain a completely new team.

Collector groups would be created in the Sumo Logic OU, following the process
laid out in [5. Use Terraform for provisioning roles and associated AD groups](0005-use-terraform-for-provisioning-roles.md).

The collector-based groups would be managed by DV, instead of being delegated to
teams (at least for the time being) and access requests for collector groups
would be handled manually by DV. The expectation here is that requests for
accessing specific subsets of logs (and not joining a team group) would be
infrequent, though this could be adjusted in the future.

### Team Groups

Sumo Logic-specific team groups would also be provisioned as a way to provide
similar access for groups of individuals within the platform. The primary use
case of team groups is considered to be a way to provide teams access to the
logs from the sources/collectos which they own, though the general statement of
being a way in which we can provide similar access to groups of people stands,
as a "team" in this context could be any arbitrary grouping of people who
require a similar search filter user capabilities.

The permissions of the role associated with a specific team group, namely the
role's search filter and capabilities, would be controlled through Terraform
configuration files, and applied directly to the role using Sumo Logic's APIs,
while the actual membership of the group will still be managed through the
Times' Active Directory, synced to Azure AD, and passed through to Sumo Logic
when a user logs in through SAML.

Since Active Directory supports the concept of ownership for groups, we plan to
delegate management of team AD groups to a designated owner for the team who
would be responsible for managing changes to the team's membership. The group's
designated owner would be defined in the Terraform configuration for
the team, and attached to the group's `managedBy` field in AD. The group owner
would then be able to manage the group's membership directly though existing
InfraService tooling such as https://groupid.nyt.net, as well as review
individual access requests created through anautomated ServiceNow (Bytes)
workflows. Changes to the owner of a team group would be made through a pull
request process to the Sumo Logic Terraform repo and would require approval from
Delivery Engineering.

In the automated Bytes request process, individuals would be able to request to
join Sumo Logic team groups though Bytes, which would create a new Bytes ticket
and automatically reach out to the group owner through Slack and email for
approval. Details on how to escalate the request to Delivery Engineering for
manual review would also be included in the email to the requestor for scenarios
where the group owner is unavailable.

## Consequences

This decision means that for the time being, we are dropping support for re-use
of existing groups from elsewhere in the Active Directory tree.

This decision means that we are still able to allow teams to manage their own
teams in Sumo Logic, without the need for DV's involvement for every request.
DV will still be able to make changes to any of the roles or membership within
Sumo Logic if necessary.

One beneficial side effect of this decision is that the provisioning of new
collectors will no longer incur a 20-minute delay from the Azure sync process
before they're able to query logs from new collectors in Sumo Logic.
