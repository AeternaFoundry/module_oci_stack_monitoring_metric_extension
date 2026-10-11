resource "oci_stack_monitoring_metric_extension" "stack_monitoring_metric_extensions" {
  for_each = var.stack_monitoring_metric_extensions

  collection_recurrences = each.value.collection_recurrences
  compartment_id         = each.value.compartment_id
  display_name           = each.value.display_name
  name                   = each.value.name
  resource_type          = each.value.resource_type
  description            = each.value.description
  publish_trigger        = each.value.publish_trigger

  dynamic "metric_list" {
    for_each = each.value.metric_list
    content {
      compute_expression = metric_list.value.compute_expression
      data_type          = metric_list.value.data_type
      display_name       = metric_list.value.display_name
      is_dimension       = metric_list.value.is_dimension
      is_hidden          = metric_list.value.is_hidden
      metric_category    = metric_list.value.metric_category
      name               = metric_list.value.name
      unit               = metric_list.value.unit
    }
  }

  query_properties {
    arguments         = each.value.query_properties.arguments
    auto_row_prefix   = each.value.query_properties.auto_row_prefix
    collection_method = each.value.query_properties.collection_method
    command           = each.value.query_properties.command
    delimiter         = each.value.query_properties.delimiter
    identity_metric   = each.value.query_properties.identity_metric
    dynamic "in_param_details" {
      for_each = each.value.query_properties.in_param_details != null ? each.value.query_properties.in_param_details : []
      content {
        in_param_position = in_param_details.value.in_param_position
        in_param_value    = in_param_details.value.in_param_value
      }
    }
    is_metric_service_enabled = each.value.query_properties.is_metric_service_enabled
    jmx_attributes            = each.value.query_properties.jmx_attributes
    managed_bean_query        = each.value.query_properties.managed_bean_query
    dynamic "out_param_details" {
      for_each = each.value.query_properties.out_param_details != null ? [each.value.query_properties.out_param_details] : []
      content {
        out_param_name     = out_param_details.value.out_param_name
        out_param_position = out_param_details.value.out_param_position
        out_param_type     = out_param_details.value.out_param_type
      }
    }
    protocol_type         = each.value.query_properties.protocol_type
    response_content_type = each.value.query_properties.response_content_type
    dynamic "script_details" {
      for_each = each.value.query_properties.script_details != null ? [each.value.query_properties.script_details] : []
      content {
        content = script_details.value.content
        name    = script_details.value.name
      }
    }
    dynamic "sql_details" {
      for_each = each.value.query_properties.sql_details != null ? [each.value.query_properties.sql_details] : []
      content {
        content          = sql_details.value.content
        script_file_name = sql_details.value.script_file_name
      }
    }
    sql_type    = each.value.query_properties.sql_type
    starts_with = each.value.query_properties.starts_with
    url         = each.value.query_properties.url
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

