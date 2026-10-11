variable "secret_manager_secret_version_lookup" {
  description = <<EOT
Map of secret_manager_secret_version_lookup, attributes below
Required:
    - secret
Optional:
    - fetch_secret_data
    - is_secret_data_base64
    - project
    - version
EOT

  type = map(object({
    secret                = string
    fetch_secret_data     = optional(bool)
    is_secret_data_base64 = optional(bool)
    project               = optional(string)
    version               = optional(string)
  }))
}

