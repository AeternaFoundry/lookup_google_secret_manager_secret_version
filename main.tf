data "google_secret_manager_secret_version" "secret_manager_secret_version_lookup" {
  for_each = var.secret_manager_secret_version_lookup

  secret                = each.value.secret
  fetch_secret_data     = each.value.fetch_secret_data
  is_secret_data_base64 = each.value.is_secret_data_base64
  project               = each.value.project
  version               = each.value.version
}

