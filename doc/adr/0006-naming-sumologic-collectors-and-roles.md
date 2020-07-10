# 6. Naming Sumo Logic collectors and roles

Date: 2020-07-07

## Status

Approved

## Context

Currently collectors and roles are created manually in Sumo Logic, do not follow any naming convention, and the names are created ad-hoc by the operator.

Collectors can span multiple applications. Roles can span multiple teams and multiple collectors and it can be difficult to identify who should be of which role. There is lack of consistency in how roles are managed.

We need to come up with a strategy for
1) Assigning collectors to applications.
2) Assigning collectors to roles.
3) Naming collectors and roles in a way that would easily identify owners and source of logs pushed to those collectors.

## Decision

Currently, there is no limit to how many collectors, endpoints, roles, or source categories that can be configured in Sumo Logic. We want to take advantage of this and manage logs ingestion and access to those logs at the individual application level.

We will be following a scheme used by other processes managed by DV (vault and github integration), where resource names match Github repository names of applications related to those resources.

Each application shipping logs to Sumo Logic will get a collector and role created for it.

Collector and role names will match 1:1.

### Collectors

Since access will be managed at the application level, collectors will be given the full name of their respective Github repositories, including organization, separated with dashes in the following format:

`<organization>-<repository>`

E.g. For an app residing in `nytimes/dv-sumologic` repository the name would be `nytimes-dv-sumologic`.

Using the terraform module, a collector definition will look like


```hcl
module "nytimes-search-omnibus" {
  source = "../modules/collector"

  name = "nytimes-search-omnibus"
}
```

### Collectors for monorepos

In case of monorepos, application's name will be appended to the collector name defined above:

`<organization>-<repository>-<application>`

E.g. for an app called `log2es` residing in `nytimes/search-omnibus` the name would be `nytimes-search-omnibus-log2es`

The collector definition using the terraform module looks like this:

```hcl
module "nytimes-search-omnibus-log2es" {
  source = "../modules/collector"

  name = "nytimes-search-omnibus-log2es"
}
```

### Endpoints

Each collector will have three endpoints created for it. Endpoint names will be created by appending `dev`, `stg` and `prd` to the collector name.

E.g. for a collector `nytimes-search-omnibus-log2es` there will be three endpoints created

* `nytimes-search-omnibus-log2es-dev`
* `nytimes-search-omnibus-log2es-stg`
* `nytimes-search-omnibus-log2es-prd`

### Source Categories

Source categories are used to create filters assigned to roles. Each collector's endpoint will have a source category created for it. The name of the source category will be the same as the corresponding endpoint.

E.g. for a collector `nytimes-search-omnibus-log2es` which has three endpoints

* `nytimes-search-omnibus-log2es-dev`
* `nytimes-search-omnibus-log2es-stg`
* `nytimes-search-omnibus-log2es-prd`

there will be corresponding source categories created for each individual endpoint with the same name:

* `nytimes-search-omnibus-log2es-dev`
* `nytimes-search-omnibus-log2es-stg`
* `nytimes-search-omnibus-log2es-prd`

### Roles

Sumo Logic roles created with this process will have a 1:1 relationship with collectors and will follow the same naming convention as collectors. Each collector will have a role created and assigned to it.

E.g. for a collector `nytimes-dv-sumologic`, where will be a corresponding `nytimes-dv-sumologic` role created.

The role will automatically have filters assigned which will include all the sourceCategory and source objects created as part of the collector. In other words, the filter will allow a role access to all the logs ingested by the corresponding collector.

The filter for the role will be a combination of all `sourceCategory` and `source` objects created in the scope of the collector. The filter will combine them with a logical `OR`, e.g.

`_sourceCategory=nytimes-search-omnibus-log2es-dev OR _sourceCategory=nytimes-search-omnibus-log2es-stg OR _sourceCategory=nytimes-search-omnibus-log2es-prd OR ...`


## Consequences

As a result of this process, we're going to shift from `team-based` or `applications groups-based` access management, to `collector-based` access management for users and log ingestion.

This will allow us to more easily identify a log's source, teams owning the log's source, and access management. It's also going to give us more flexibility when we start tracking log ingestion per source.

As a consequence we will be creating more collectors and roles. User management may require more work, but this work will be automated.
