variable "dashboards" {
  description = <<EOT
Map of dashboards, attributes below
Required:
    - name
    - project_id
Optional:
    - description
    - refresh_interval
    - team_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    name             = string
    project_id       = string
    description      = optional(string)
    refresh_interval = optional(number)
    team_id          = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dashboards : (
        length(trimspace(v.name)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.dashboards : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.project_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.dashboards : (
        v.team_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.team_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.dashboards : (
        v.description == null || (length(v.description) <= 128)
      )
    ])
    error_message = "must be at most 128 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.dashboards : (
        v.refresh_interval == null || (contains([0, 5], v.refresh_interval))
      )
    ])
    error_message = "must be one of: 0, 5"
  }
}

