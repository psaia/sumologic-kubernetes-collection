# 2. Role Provisioning

Date: 2020-06-17

## Status

Draft

## Context

Most roles in Sumo Logic are loosely based on teams at the moment. Roles are 
created ad-hoc as needed.

## Decision

### Collector-level roles

A role will automatically be provisioned for each collector created, allowing 
for individuals to be given granular permissions to collectors they need access
to.

### Group level roles

Roles will also be provisioned for groups of individuals, such as teams, which
need similar access permissions within Sumo.
This provides a migration for our current team-based roles which allow access
to multiple collectors.

## Consequences

Permissions can be finely-grained for individual access to applications if 
necessary, and the convenience of group-based roles for groups of individuals 
requiring similar access is preserved.