output "s3_bucket_intelligent_tiering_configurations_id" {
  description = "Map of id values across all s3_bucket_intelligent_tiering_configurations, keyed the same as var.s3_bucket_intelligent_tiering_configurations"
  value       = { for k, v in aws_s3_bucket_intelligent_tiering_configuration.s3_bucket_intelligent_tiering_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "s3_bucket_intelligent_tiering_configurations_bucket" {
  description = "Map of bucket values across all s3_bucket_intelligent_tiering_configurations, keyed the same as var.s3_bucket_intelligent_tiering_configurations"
  value       = { for k, v in aws_s3_bucket_intelligent_tiering_configuration.s3_bucket_intelligent_tiering_configurations : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "s3_bucket_intelligent_tiering_configurations_filter" {
  description = "Map of filter values across all s3_bucket_intelligent_tiering_configurations, keyed the same as var.s3_bucket_intelligent_tiering_configurations"
  value       = { for k, v in aws_s3_bucket_intelligent_tiering_configuration.s3_bucket_intelligent_tiering_configurations : k => one(v.filter) if v.filter != null && length(v.filter) > 0 }
}
output "s3_bucket_intelligent_tiering_configurations_name" {
  description = "Map of name values across all s3_bucket_intelligent_tiering_configurations, keyed the same as var.s3_bucket_intelligent_tiering_configurations"
  value       = { for k, v in aws_s3_bucket_intelligent_tiering_configuration.s3_bucket_intelligent_tiering_configurations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "s3_bucket_intelligent_tiering_configurations_region" {
  description = "Map of region values across all s3_bucket_intelligent_tiering_configurations, keyed the same as var.s3_bucket_intelligent_tiering_configurations"
  value       = { for k, v in aws_s3_bucket_intelligent_tiering_configuration.s3_bucket_intelligent_tiering_configurations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "s3_bucket_intelligent_tiering_configurations_status" {
  description = "Map of status values across all s3_bucket_intelligent_tiering_configurations, keyed the same as var.s3_bucket_intelligent_tiering_configurations"
  value       = { for k, v in aws_s3_bucket_intelligent_tiering_configuration.s3_bucket_intelligent_tiering_configurations : k => v.status if v.status != null && length(v.status) > 0 }
}
output "s3_bucket_intelligent_tiering_configurations_tiering" {
  description = "Map of tiering values across all s3_bucket_intelligent_tiering_configurations, keyed the same as var.s3_bucket_intelligent_tiering_configurations"
  value       = { for k, v in aws_s3_bucket_intelligent_tiering_configuration.s3_bucket_intelligent_tiering_configurations : k => v.tiering if v.tiering != null && length(v.tiering) > 0 }
}

