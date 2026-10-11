resource "google_dataform_folder" "dataform_folders" {
  for_each = var.dataform_folders

  display_name      = each.value.display_name
  region            = each.value.region
  containing_folder = each.value.containing_folder
  deletion_policy   = each.value.deletion_policy
  project           = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

