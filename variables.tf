variable "s3_bucket_intelligent_tiering_configurations" {
  description = <<EOT
Map of s3_bucket_intelligent_tiering_configurations, attributes below
Required:
    - bucket
    - name
    - tiering (block):
        - access_tier (required)
        - days (required)
Optional:
    - region
    - status
    - filter (block):
        - prefix (optional)
        - tags (optional)
EOT

  type = map(object({
    bucket = string
    name   = string
    region = optional(string)
    status = optional(string)
    tiering = list(object({
      access_tier = string
      days        = number
    }))
    filter = optional(object({
      prefix = optional(string)
      tags   = optional(map(string))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.s3_bucket_intelligent_tiering_configurations : (
        length(v.tiering) >= 1
      )
    ])
    error_message = "Each tiering list must contain at least 1 items"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

