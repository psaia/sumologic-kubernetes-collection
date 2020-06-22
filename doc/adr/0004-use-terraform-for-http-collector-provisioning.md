# 4. Use Terraform for HTTP collector and source provisioning

Date: 2020-06-18

## Status

Draft

## Scope

This ADR is limited exclusively to HTTP collectors and sources.

## Context

Currently, collectors are provisioned manually upon request by teams. It is up
to the admin creating the collector to decide on how the collector is named and
how permissions to it/it's resources are managed.

## Decision

Provision new HTTP collectors and sources using Terraform.

Provisioned collectors will follow the following conventions:
- One collector will be provisioned per application.

  Conventions for collectors: 
  - Name: `<team>-<app>`

- Each collector will have up to three separate sources provisioned, one each 
  for dev, stg, and prd.

  Conventions for collector sources:
  - Name: `<team>-<app>-<env>`
  - Source category: `<team>-<app>`

## Consequences

Collector provisioning will be standardized, reducing confusion for teams 
attempting to figure out what queries will yield the logs they expect, and
minimizing the need for Delivery Engineering to investigate issues relating
to the naming of log sources.