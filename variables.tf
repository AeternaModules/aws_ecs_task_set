variable "ecs_task_sets" {
  description = <<EOT
Map of ecs_task_sets, attributes below
Required:
    - cluster
    - service
    - task_definition
Optional:
    - external_id
    - force_delete
    - launch_type
    - platform_version
    - region
    - tags
    - tags_all
    - wait_until_stable
    - wait_until_stable_timeout
    - capacity_provider_strategy (block):
        - base (optional)
        - capacity_provider (required)
        - weight (required)
    - load_balancer (block):
        - container_name (required)
        - container_port (optional)
        - load_balancer_name (optional)
        - target_group_arn (optional)
    - network_configuration (block):
        - assign_public_ip (optional)
        - security_groups (optional)
        - subnets (required)
    - scale (block):
        - unit (optional)
        - value (optional)
    - service_registries (block):
        - container_name (optional)
        - container_port (optional)
        - port (optional)
        - registry_arn (required)
EOT

  type = map(object({
    cluster                   = string
    service                   = string
    task_definition           = string
    external_id               = optional(string)
    force_delete              = optional(bool)
    launch_type               = optional(string)
    platform_version          = optional(string)
    region                    = optional(string)
    tags                      = optional(map(string))
    tags_all                  = optional(map(string))
    wait_until_stable         = optional(bool)
    wait_until_stable_timeout = optional(string)
    capacity_provider_strategy = optional(list(object({
      base              = optional(number)
      capacity_provider = string
      weight            = number
    })))
    load_balancer = optional(list(object({
      container_name     = string
      container_port     = optional(number)
      load_balancer_name = optional(string)
      target_group_arn   = optional(string)
    })))
    network_configuration = optional(object({
      assign_public_ip = optional(bool)
      security_groups  = optional(set(string))
      subnets          = set(string)
    }))
    scale = optional(object({
      unit  = optional(string)
      value = optional(number)
    }))
    service_registries = optional(object({
      container_name = optional(string)
      container_port = optional(number)
      port           = optional(number)
      registry_arn   = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ecs_task_sets : (
        v.load_balancer == null || alltrue([for item in v.load_balancer : (item.container_port == null || (item.container_port >= 1 && item.container_port <= 65535))])
      )
    ])
    error_message = "must be a valid port number (1-65535)"
  }
  validation {
    condition = alltrue([
      for k, v in var.ecs_task_sets : (
        v.service_registries == null || (v.service_registries.container_port == null || (v.service_registries.container_port >= 1 && v.service_registries.container_port <= 65535))
      )
    ])
    error_message = "must be a valid port number (1-65535)"
  }
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

