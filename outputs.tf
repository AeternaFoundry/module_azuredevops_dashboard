output "dashboards_id" {
  description = "Map of id values across all dashboards, keyed the same as var.dashboards"
  value       = { for k, v in azuredevops_dashboard.dashboards : k => v.id }
}
output "dashboards_description" {
  description = "Map of description values across all dashboards, keyed the same as var.dashboards"
  value       = { for k, v in azuredevops_dashboard.dashboards : k => v.description }
}
output "dashboards_name" {
  description = "Map of name values across all dashboards, keyed the same as var.dashboards"
  value       = { for k, v in azuredevops_dashboard.dashboards : k => v.name }
}
output "dashboards_owner_id" {
  description = "Map of owner_id values across all dashboards, keyed the same as var.dashboards"
  value       = { for k, v in azuredevops_dashboard.dashboards : k => v.owner_id }
}
output "dashboards_project_id" {
  description = "Map of project_id values across all dashboards, keyed the same as var.dashboards"
  value       = { for k, v in azuredevops_dashboard.dashboards : k => v.project_id }
}
output "dashboards_refresh_interval" {
  description = "Map of refresh_interval values across all dashboards, keyed the same as var.dashboards"
  value       = { for k, v in azuredevops_dashboard.dashboards : k => v.refresh_interval }
}
output "dashboards_team_id" {
  description = "Map of team_id values across all dashboards, keyed the same as var.dashboards"
  value       = { for k, v in azuredevops_dashboard.dashboards : k => v.team_id }
}

