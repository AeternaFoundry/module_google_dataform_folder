output "dataform_folders_id" {
  description = "Map of id values across all dataform_folders, keyed the same as var.dataform_folders except keys with no id are omitted"
  value       = { for k, v in google_dataform_folder.dataform_folders : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dataform_folders_containing_folder" {
  description = "Map of containing_folder values across all dataform_folders, keyed the same as var.dataform_folders except keys with no containing_folder are omitted"
  value       = { for k, v in google_dataform_folder.dataform_folders : k => v.containing_folder if v.containing_folder != null && length(v.containing_folder) > 0 }
}
output "dataform_folders_deletion_policy" {
  description = "Map of deletion_policy values across all dataform_folders, keyed the same as var.dataform_folders except keys with no deletion_policy are omitted"
  value       = { for k, v in google_dataform_folder.dataform_folders : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "dataform_folders_display_name" {
  description = "Map of display_name values across all dataform_folders, keyed the same as var.dataform_folders except keys with no display_name are omitted"
  value       = { for k, v in google_dataform_folder.dataform_folders : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "dataform_folders_folder_id" {
  description = "Map of folder_id values across all dataform_folders, keyed the same as var.dataform_folders except keys with no folder_id are omitted"
  value       = { for k, v in google_dataform_folder.dataform_folders : k => v.folder_id if v.folder_id != null && length(v.folder_id) > 0 }
}
output "dataform_folders_name" {
  description = "Map of name values across all dataform_folders, keyed the same as var.dataform_folders except keys with no name are omitted"
  value       = { for k, v in google_dataform_folder.dataform_folders : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dataform_folders_project" {
  description = "Map of project values across all dataform_folders, keyed the same as var.dataform_folders except keys with no project are omitted"
  value       = { for k, v in google_dataform_folder.dataform_folders : k => v.project if v.project != null && length(v.project) > 0 }
}
output "dataform_folders_region" {
  description = "Map of region values across all dataform_folders, keyed the same as var.dataform_folders except keys with no region are omitted"
  value       = { for k, v in google_dataform_folder.dataform_folders : k => v.region if v.region != null && length(v.region) > 0 }
}

