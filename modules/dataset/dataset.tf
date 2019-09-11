resource "google_bigquery_dataset" "dataset" {
  count = length(var.dataset_id)
  dataset_id                  = var.dataset_id[count.index]
  friendly_name               = var.friendly_name
  description                 = var.description
  location                    = var.location
  default_table_expiration_ms = var.default_table_expiration_ms
  project                     = var.project
  delete_contents_on_destroy  = var.delete_contents_on_destroy
  labels                      = var.labels


  dynamic "access" {
    for_each = [for ac in var.access: {
      domain         = lookup(ac, "domain", null)
      group_by_email = lookup(ac, "group_by_email", null)
      role           = lookup(ac, "role", null)
      special_group  = lookup(ac, "special_group", null)
      user_by_email  = lookup(ac, "user_by_email", null)
    }]
    content {
      domain = access.value.domain
      group_by_email = access.value.group_by_email
      role = access.value.role
      special_group = access.value.special_group
      user_by_email = access.value.user_by_email
    }
  }
}

