# 10. Allow users to request access to teams via Bytes workflows

Date: 2020-10-07

## Status

Accepted

## Context

Even though we are now using the Times' Active Directory servers as our
source-of-truth for Sumo Logic role membership, manual review and processing by
Delivery Engineering is necessary to resolve requests.

## Decision

Users will be able to request to join team groups via a Bytes workflow for
Sumo Logic. The workflow will allow users to select one or more teams which they
would like to join, and will request approval from the respective team's
managers (set via the `managedBy` field of the AD group).

Requests for access to teams without a manager specified will be reviewed by
Observability team members, via a group in the Sumo Logic OU called
`default-sumo-approvers`. This group will contain the Observability team's
currently daytime on-call support engineer, instead of notifying the entire team.

## Consequences

This change publicizes to the rest of the organization which Sumo Logic teams
are available to join, and allows teams to manage their own access requests
without involvement from the Observability team (once a manager has been
assigned).

While this doesn't reduce the toil of manual approvals from DV for the groups
without managers assigned, it simplifies the process and automates the actual
process of adding the user to the requested group.
