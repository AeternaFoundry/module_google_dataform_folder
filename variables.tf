variable "dataform_folders" {
  description = <<EOT
Map of dataform_folders, attributes below
Required:
    - display_name
    - region
Optional:
    - containing_folder
    - deletion_policy
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    display_name      = string
    region            = string
    containing_folder = optional(string)
    deletion_policy   = optional(string)
    project           = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

