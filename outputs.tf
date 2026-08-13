output "ecs_task_sets_id" {
  description = "Map of id values across all ecs_task_sets, keyed the same as var.ecs_task_sets"
  value       = { for k, v in aws_ecs_task_set.ecs_task_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ecs_task_sets_arn" {
  description = "Map of arn values across all ecs_task_sets, keyed the same as var.ecs_task_sets"
  value       = { for k, v in aws_ecs_task_set.ecs_task_sets : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ecs_task_sets_capacity_provider_strategy" {
  description = "Map of capacity_provider_strategy values across all ecs_task_sets, keyed the same as var.ecs_task_sets"
  value       = { for k, v in aws_ecs_task_set.ecs_task_sets : k => v.capacity_provider_strategy if v.capacity_provider_strategy != null && length(v.capacity_provider_strategy) > 0 }
}
output "ecs_task_sets_cluster" {
  description = "Map of cluster values across all ecs_task_sets, keyed the same as var.ecs_task_sets"
  value       = { for k, v in aws_ecs_task_set.ecs_task_sets : k => v.cluster if v.cluster != null && length(v.cluster) > 0 }
}
output "ecs_task_sets_external_id" {
  description = "Map of external_id values across all ecs_task_sets, keyed the same as var.ecs_task_sets"
  value       = { for k, v in aws_ecs_task_set.ecs_task_sets : k => v.external_id if v.external_id != null && length(v.external_id) > 0 }
}
output "ecs_task_sets_force_delete" {
  description = "Map of force_delete values across all ecs_task_sets, keyed the same as var.ecs_task_sets"
  value       = { for k, v in aws_ecs_task_set.ecs_task_sets : k => v.force_delete if v.force_delete != null }
}
output "ecs_task_sets_launch_type" {
  description = "Map of launch_type values across all ecs_task_sets, keyed the same as var.ecs_task_sets"
  value       = { for k, v in aws_ecs_task_set.ecs_task_sets : k => v.launch_type if v.launch_type != null && length(v.launch_type) > 0 }
}
output "ecs_task_sets_load_balancer" {
  description = "Map of load_balancer values across all ecs_task_sets, keyed the same as var.ecs_task_sets"
  value       = { for k, v in aws_ecs_task_set.ecs_task_sets : k => v.load_balancer if v.load_balancer != null && length(v.load_balancer) > 0 }
}
output "ecs_task_sets_network_configuration" {
  description = "Map of network_configuration values across all ecs_task_sets, keyed the same as var.ecs_task_sets"
  value       = { for k, v in aws_ecs_task_set.ecs_task_sets : k => v.network_configuration if v.network_configuration != null && length(v.network_configuration) > 0 }
}
output "ecs_task_sets_platform_version" {
  description = "Map of platform_version values across all ecs_task_sets, keyed the same as var.ecs_task_sets"
  value       = { for k, v in aws_ecs_task_set.ecs_task_sets : k => v.platform_version if v.platform_version != null && length(v.platform_version) > 0 }
}
output "ecs_task_sets_region" {
  description = "Map of region values across all ecs_task_sets, keyed the same as var.ecs_task_sets"
  value       = { for k, v in aws_ecs_task_set.ecs_task_sets : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ecs_task_sets_scale" {
  description = "Map of scale values across all ecs_task_sets, keyed the same as var.ecs_task_sets"
  value       = { for k, v in aws_ecs_task_set.ecs_task_sets : k => v.scale if v.scale != null && length(v.scale) > 0 }
}
output "ecs_task_sets_service" {
  description = "Map of service values across all ecs_task_sets, keyed the same as var.ecs_task_sets"
  value       = { for k, v in aws_ecs_task_set.ecs_task_sets : k => v.service if v.service != null && length(v.service) > 0 }
}
output "ecs_task_sets_service_registries" {
  description = "Map of service_registries values across all ecs_task_sets, keyed the same as var.ecs_task_sets"
  value       = { for k, v in aws_ecs_task_set.ecs_task_sets : k => v.service_registries if v.service_registries != null && length(v.service_registries) > 0 }
}
output "ecs_task_sets_stability_status" {
  description = "Map of stability_status values across all ecs_task_sets, keyed the same as var.ecs_task_sets"
  value       = { for k, v in aws_ecs_task_set.ecs_task_sets : k => v.stability_status if v.stability_status != null && length(v.stability_status) > 0 }
}
output "ecs_task_sets_status" {
  description = "Map of status values across all ecs_task_sets, keyed the same as var.ecs_task_sets"
  value       = { for k, v in aws_ecs_task_set.ecs_task_sets : k => v.status if v.status != null && length(v.status) > 0 }
}
output "ecs_task_sets_tags" {
  description = "Map of tags values across all ecs_task_sets, keyed the same as var.ecs_task_sets"
  value       = { for k, v in aws_ecs_task_set.ecs_task_sets : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ecs_task_sets_tags_all" {
  description = "Map of tags_all values across all ecs_task_sets, keyed the same as var.ecs_task_sets"
  value       = { for k, v in aws_ecs_task_set.ecs_task_sets : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "ecs_task_sets_task_definition" {
  description = "Map of task_definition values across all ecs_task_sets, keyed the same as var.ecs_task_sets"
  value       = { for k, v in aws_ecs_task_set.ecs_task_sets : k => v.task_definition if v.task_definition != null && length(v.task_definition) > 0 }
}
output "ecs_task_sets_task_set_id" {
  description = "Map of task_set_id values across all ecs_task_sets, keyed the same as var.ecs_task_sets"
  value       = { for k, v in aws_ecs_task_set.ecs_task_sets : k => v.task_set_id if v.task_set_id != null && length(v.task_set_id) > 0 }
}
output "ecs_task_sets_wait_until_stable" {
  description = "Map of wait_until_stable values across all ecs_task_sets, keyed the same as var.ecs_task_sets"
  value       = { for k, v in aws_ecs_task_set.ecs_task_sets : k => v.wait_until_stable if v.wait_until_stable != null }
}
output "ecs_task_sets_wait_until_stable_timeout" {
  description = "Map of wait_until_stable_timeout values across all ecs_task_sets, keyed the same as var.ecs_task_sets"
  value       = { for k, v in aws_ecs_task_set.ecs_task_sets : k => v.wait_until_stable_timeout if v.wait_until_stable_timeout != null && length(v.wait_until_stable_timeout) > 0 }
}

