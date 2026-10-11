variable "config_map_lookup" {
  description = <<EOT
Map of config_map_lookup, attributes below
Required:
    - metadata (block):
        - annotations (optional)
        - labels (optional)
        - name (optional)
        - namespace (optional)
Optional:
    - immutable
EOT

  type = map(object({
    immutable = optional(bool)
    metadata = object({
      annotations = optional(map(string))
      labels      = optional(map(string))
      name        = optional(string)
      namespace   = optional(string)
    })
  }))
}

