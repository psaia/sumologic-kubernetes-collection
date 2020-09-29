# 8. Controlling role access through AD

Date: 2020-07-08

## Status

Proposed

Amended by [9. Team role provisioning and management](0009-team-role-provisioning-and-management.md)

## Context

Currently, user roles in Sumo Logic are assigned manually through the Sumo UI
when a user opens a ticket requesting access to logs from a collector.

Users are assigned to an AD group in order to gain access to our Sumo account
(login with SAML), but the user's role membership within Sumo is currently
managed out-of-band.

Sumo is capable of doing "just-in-time" provisioning of user roles through the
SAML response when the RBAC roles which a user should have access to are
included in a SAML attribute (the "groups" attribute) of the SAML login response.

## Decision

In addition to managing overall application access to Sumo through AD, we want
to implement Sumo's just-in-time role provisioning which is supported through the
group attribute in the SAML response. To do this, AD groups must be provisioned
which match up exactly with RBAC roles in Sumo Logic, and the SAML response
returned to Sumo as part of the Azure login flow must include the groups
attribute, which is a list of the RBAC roles which a user should be a member of.

Sumo Logic RBAC Roles will be provisioned for each collector, with
a corresponding AD group according to the naming conventions in
[ADR #6](0006-naming-sumologic-collectors-and-roles.md). These collector-level
AD groups will the groups that are used to determine what resources a user in
Sumo Logic has access to. However, instead of following a traditional model of
adding individual users to the collector-level AD groups, we plan to have the
membership of collector-level AD groups managed through nested AD groups which
are added as "members" of the collector groups.

Following the nested-group model, when a new collector is created, an existing AD
group of the team owning the collector would be added to the collector's AD
group to provide the access to it in a "bring-your-own-ad-group" fashion.

## Consequences

This model of using collector-level groups and roles and relying on nested
groups to manage the membership of collector-level groups blends the approach
of having team-based access control within Sumo, while also remaining flexible
enough to add specific users to collectors should the need arise.

While somewhat beyond the scope of this document, it should be noted that the
creation and management of team-based AD groups will not be handled by any of
the Sumo Logic processes. Teams which do not have an existing AD group will need
to have one created which can then be added to the collector-level role (nested).
While this does add an additional step to the onboarding process for teams which
do not already have existing AD group they can leverage, we feel that encouraging
re-use of AD groups across the organization is worth the cost here.

The bring-your-own-group model that leans on existing team-based groups in AD
will also reduce the need to create and maintain redundant groups within AD,
and keep Delivery Engineering from having to maintain AD groups specifically
for Sumo Logic that reflect the ever-changing structure and membership of teams
at the Times.
