output "config_map_lookup_id" {
  description = "Map of id values across all config_map_lookup, keyed the same as var.config_map_lookup except keys with no id are omitted"
  value       = { for k, v in data.kubernetes_config_map.config_map_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "config_map_lookup_binary_data" {
  description = "Map of binary_data values across all config_map_lookup, keyed the same as var.config_map_lookup except keys with no binary_data are omitted"
  value       = { for k, v in data.kubernetes_config_map.config_map_lookup : k => v.binary_data if v.binary_data != null && length(v.binary_data) > 0 }
}
output "config_map_lookup_data" {
  description = "Map of data values across all config_map_lookup, keyed the same as var.config_map_lookup except keys with no data are omitted"
  value       = { for k, v in data.kubernetes_config_map.config_map_lookup : k => v.data if v.data != null && length(v.data) > 0 }
}
output "config_map_lookup_immutable" {
  description = "Map of immutable values across all config_map_lookup, keyed the same as var.config_map_lookup except keys with no immutable are omitted"
  value       = { for k, v in data.kubernetes_config_map.config_map_lookup : k => v.immutable if v.immutable != null }
}
output "config_map_lookup_metadata" {
  description = "Map of metadata values across all config_map_lookup, keyed the same as var.config_map_lookup except keys with no metadata are omitted"
  value       = { for k, v in data.kubernetes_config_map.config_map_lookup : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}

