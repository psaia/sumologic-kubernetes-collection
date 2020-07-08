# 6. Naming sumologic collectors and roles

Date: 2020-07-07

## Status

Proposed

## Context

Collectors and roles created manually in Sumologic do not follow any naming convention and names are created ad-hoc by the operator.

Collectors can span multiple applications. Roles can span multiple team and multiple collector. It's difficult to identify who should be part of defined roles. There is no consistency in how roles are managed.

We need to come up with a strategy for
1) Assigning collectors to applications
2) Assigning collectors to roles
3) Naming collectors and roles in a way that would easily identify owners and source of logs pushed to those collectors.

## Decision

Currently, there is no limit in how many collectors, endpoints, roles or source categories can be configured in sumologic. We want to take advantage of it and manage logs ingestion and access to those logs on the individual application level. 

We will be following a scheme used by other processes managed by DV, where resource names match Github repository names of applications related to those resources.

Each application shipping logs to sumologic will get a collector and role created for it.

Collectors and roles, and their names, will match 1:1.

### Collectors

The collector names will be given full names of Github repositories, including the organization, separated with dashes in the format:

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

In case of monorepos, the individual application's name will be appended to the collector name defined above:

`<organization>-<repository>-<application>`

E.g. for an app called `log2es` residing in `nytimes/search-omnibus` the name would be `nytimes-search-omnibus-log2es`

```hcl
module "nytimes-search-omnibus-log2es" {
  source = "../modules/collector"

  name = "nytimes-search-omnibus-log2es"
}
```

### Endpoints

Each collector will get three endpoints created in it. Endpoint names will be created by appending `dev`, `stg` and `prd` to the collector name.

E.g. for a collector `nytimes-search-omnibus-log2es` there will be three endpoints created

* `nytimes-search-omnibus-log2es-dev`
* `nytimes-search-omnibus-log2es-stg`
* `nytimes-search-omnibus-log2es-prd`

### Source Categories

Source categories are used to create filters assigned to roles. Each endpoint in a collector will have a source category created for it. The name of the source category will be the same as the endpoint's.

E.g. for a collector `nytimes-search-omnibus-log2es` which has three endpoints

* `nytimes-search-omnibus-log2es-dev`
* `nytimes-search-omnibus-log2es-stg`
* `nytimes-search-omnibus-log2es-prd`

there will be corresponding source categories created for each individual endpoint with the same name:

* `nytimes-search-omnibus-log2es-dev`
* `nytimes-search-omnibus-log2es-stg`
* `nytimes-search-omnibus-log2es-prd`

### Roles

Sumologic roles created with this process will be related 1:1 to collectors and will follow the same naming convention as collectors. Each collector will have a role created and assigned to it.

E.g. for a collector `nytimes-dv-sumologic`, where will be a corresponding `nytimes-dv-sumologic` role created.

The role will get automatically assigned filters which will include all the `sourceCategory` and `source` object created as part of the collector. In other words, the filter will allow the role to get access to all the logs ingested by the collector.

The filter for the role will be combining `sourceCategory` and `source` object with a logical `OR`.


## Consequences

As a result of this process, we're going to shift from `team-based` or `applications groups-based` access management, to `collector-based` access management for users and logs ingestion.

It will allow us to easier identify logs source, teams owning the logs source, access management. It's also going to give us more flexibility when we'll start tracking logs ingestion per source.

As a consequence we will be creating more collectors and roles. Users management may require more work, but this part will get automated.
