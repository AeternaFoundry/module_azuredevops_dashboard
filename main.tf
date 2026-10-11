resource "azuredevops_dashboard" "dashboards" {
  for_each = var.dashboards

  name             = each.value.name
  project_id       = each.value.project_id
  description      = each.value.description
  refresh_interval = each.value.refresh_interval
  team_id          = each.value.team_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

