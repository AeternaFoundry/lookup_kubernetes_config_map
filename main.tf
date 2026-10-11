data "kubernetes_config_map" "config_map_lookup" {
  for_each = var.config_map_lookup

  immutable = each.value.immutable

  metadata {
    annotations = each.value.metadata.annotations
    labels      = each.value.metadata.labels
    name        = each.value.metadata.name
    namespace   = each.value.metadata.namespace
  }
}

