variable "name" {
  type = string
}

variable "search_filter" {
  type    = string
  default = ""
}

variable "capabilities" {
  type    = list(string)
  default = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys", "changeDataAccessLevel"]
}

variable "owners" {
  # unimplemented at the moment, needs more exploration
  type    = list(string)
  default = []
}

variable "env" {
  type        = string
  description = "Environment that the build is running against"
}

variable "role_prefix" {
  type        = map(string)
  description = "Prefix to be attached to Sumo Logic roles and AD groups based on environment"

  default = {
    test = "test-sumo"
    prd  = "sumo"
  }
}

variable "ad_oudn" {
  type    = string
  default = "OU=SumoLogic RBAC,OU=2FA Objects,OU=NYTMG,DC=ent,DC=nytint,DC=COM"
}

variable "group_manager" {
  type        = string
  description = "Group manager of the sumo- AD group. Must be full AD Distinguished Name."
  default     = null
}
