variable "stack_monitoring_metric_extensions" {
  description = <<EOT
Map of stack_monitoring_metric_extensions, attributes below
Required:
    - collection_recurrences
    - compartment_id
    - display_name
    - name
    - resource_type
    - metric_list (block):
        - compute_expression (optional)
        - data_type (required)
        - display_name (optional)
        - is_dimension (optional)
        - is_hidden (optional)
        - metric_category (optional)
        - name (required)
        - unit (optional)
    - query_properties (block):
        - arguments (optional)
        - auto_row_prefix (optional)
        - collection_method (required)
        - command (optional)
        - delimiter (optional)
        - identity_metric (optional)
        - in_param_details (optional, block):
            - in_param_position (required)
            - in_param_value (required)
        - is_metric_service_enabled (optional)
        - jmx_attributes (optional)
        - managed_bean_query (optional)
        - out_param_details (optional, block):
            - out_param_name (optional)
            - out_param_position (required)
            - out_param_type (required)
        - protocol_type (optional)
        - response_content_type (optional)
        - script_details (optional, block):
            - content (required)
            - name (required)
        - sql_details (optional, block):
            - content (required)
            - script_file_name (optional)
        - sql_type (optional)
        - starts_with (optional)
        - url (optional)
Optional:
    - description
    - publish_trigger
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    collection_recurrences = string
    compartment_id         = string
    display_name           = string
    name                   = string
    resource_type          = string
    description            = optional(string)
    publish_trigger        = optional(bool)
    metric_list = list(object({
      compute_expression = optional(string)
      data_type          = string
      display_name       = optional(string)
      is_dimension       = optional(bool)
      is_hidden          = optional(bool)
      metric_category    = optional(string)
      name               = string
      unit               = optional(string)
    }))
    query_properties = object({
      arguments         = optional(string)
      auto_row_prefix   = optional(string)
      collection_method = string
      command           = optional(string)
      delimiter         = optional(string)
      identity_metric   = optional(string)
      in_param_details = optional(list(object({
        in_param_position = number
        in_param_value    = string
      })))
      is_metric_service_enabled = optional(bool)
      jmx_attributes            = optional(string)
      managed_bean_query        = optional(string)
      out_param_details = optional(object({
        out_param_name     = optional(string)
        out_param_position = number
        out_param_type     = string
      }))
      protocol_type         = optional(string)
      response_content_type = optional(string)
      script_details = optional(object({
        content = string
        name    = string
      }))
      sql_details = optional(object({
        content          = string
        script_file_name = optional(string)
      }))
      sql_type    = optional(string)
      starts_with = optional(string)
      url         = optional(string)
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.stack_monitoring_metric_extensions : (
        length(v.metric_list) >= 1
      )
    ])
    error_message = "Each metric_list list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.stack_monitoring_metric_extensions : (
        contains([for v in ["HTTP", "JMX", "OS_COMMAND", "SQL"] : lower(v)], lower(v.query_properties.collection_method))
      )
    ])
    error_message = "must be one of: \"HTTP\", \"JMX\", \"OS_COMMAND\", \"SQL\""
  }
}

