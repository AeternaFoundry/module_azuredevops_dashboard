output "dashboards_id" {
  description = "Map of id values across all dashboards, keyed the same as var.dashboards except keys with no id are omitted"
  value       = { for k, v in azuredevops_dashboard.dashboards : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dashboards_description" {
  description = "Map of description values across all dashboards, keyed the same as var.dashboards except keys with no description are omitted"
  value       = { for k, v in azuredevops_dashboard.dashboards : k => v.description if v.description != null && length(v.description) > 0 }
}
output "dashboards_name" {
  description = "Map of name values across all dashboards, keyed the same as var.dashboards except keys with no name are omitted"
  value       = { for k, v in azuredevops_dashboard.dashboards : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dashboards_owner_id" {
  description = "Map of owner_id values across all dashboards, keyed the same as var.dashboards except keys with no owner_id are omitted"
  value       = { for k, v in azuredevops_dashboard.dashboards : k => v.owner_id if v.owner_id != null && length(v.owner_id) > 0 }
}
output "dashboards_project_id" {
  description = "Map of project_id values across all dashboards, keyed the same as var.dashboards except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_dashboard.dashboards : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "dashboards_refresh_interval" {
  description = "Map of refresh_interval values across all dashboards, keyed the same as var.dashboards except keys with no refresh_interval are omitted"
  value       = { for k, v in azuredevops_dashboard.dashboards : k => v.refresh_interval if v.refresh_interval != null }
}
output "dashboards_team_id" {
  description = "Map of team_id values across all dashboards, keyed the same as var.dashboards except keys with no team_id are omitted"
  value       = { for k, v in azuredevops_dashboard.dashboards : k => v.team_id if v.team_id != null && length(v.team_id) > 0 }
}

