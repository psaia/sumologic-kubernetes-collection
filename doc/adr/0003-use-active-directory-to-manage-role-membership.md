# 3. Use Active Directory to manage role membership

Date: 2020-06-17

## Status

Draft

## Context

As of early June, 2020, role membership in Sumo is managed manually by 
Sumo admins (DV). Jira tickets are opened, and it is up to the admin
picking up the ticket to:
1. evaluate whether the request should be granted
2. make the changes through the Sumo Logic UI

There is no offboarding protocol in place.

## Decision

Use Active Directory (in house + Azure AD) to manage Sumo Logic role membership.

We already use AD to manage platform access to Sumo with SAML, and Sumo includes 
the option to provision role membership for a specific user in the user's SAML 
response. 

In addition, teams will be allowed to designate "owners" to manage the 
membership of their AD groups.

## Consequences

This brings Sumo in line with how many other applications' access at The Times 
is managed.

For DV:
- Reduces toil of making changes to roles through the UI
- Reduces cognitive overhead of verifying role membership (is Alice on team X? 
  Should Bob have access to application B's logs?)

For Teams:
- Reduced friction to getting access to Sumo Logic resources: Team managers can
  approve requests without DV's involvement.
- Transparency: teams can verify who has access to their roles/resources.
- Increased work: The maintenance burden does shift to teams themselves. 
  Managers/owners will have to approve requests.

For all: 
- Better security: uses a tried-and-tested approach for access management
