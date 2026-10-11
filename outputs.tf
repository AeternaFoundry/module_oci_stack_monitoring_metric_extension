output "stack_monitoring_metric_extensions_id" {
  description = "Map of id values across all stack_monitoring_metric_extensions, keyed the same as var.stack_monitoring_metric_extensions except keys with no id are omitted"
  value       = { for k, v in oci_stack_monitoring_metric_extension.stack_monitoring_metric_extensions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "stack_monitoring_metric_extensions_collection_method" {
  description = "Map of collection_method values across all stack_monitoring_metric_extensions, keyed the same as var.stack_monitoring_metric_extensions except keys with no collection_method are omitted"
  value       = { for k, v in oci_stack_monitoring_metric_extension.stack_monitoring_metric_extensions : k => v.collection_method if v.collection_method != null && length(v.collection_method) > 0 }
}
output "stack_monitoring_metric_extensions_collection_recurrences" {
  description = "Map of collection_recurrences values across all stack_monitoring_metric_extensions, keyed the same as var.stack_monitoring_metric_extensions except keys with no collection_recurrences are omitted"
  value       = { for k, v in oci_stack_monitoring_metric_extension.stack_monitoring_metric_extensions : k => v.collection_recurrences if v.collection_recurrences != null && length(v.collection_recurrences) > 0 }
}
output "stack_monitoring_metric_extensions_compartment_id" {
  description = "Map of compartment_id values across all stack_monitoring_metric_extensions, keyed the same as var.stack_monitoring_metric_extensions except keys with no compartment_id are omitted"
  value       = { for k, v in oci_stack_monitoring_metric_extension.stack_monitoring_metric_extensions : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "stack_monitoring_metric_extensions_created_by" {
  description = "Map of created_by values across all stack_monitoring_metric_extensions, keyed the same as var.stack_monitoring_metric_extensions except keys with no created_by are omitted"
  value       = { for k, v in oci_stack_monitoring_metric_extension.stack_monitoring_metric_extensions : k => v.created_by if v.created_by != null && length(v.created_by) > 0 }
}
output "stack_monitoring_metric_extensions_description" {
  description = "Map of description values across all stack_monitoring_metric_extensions, keyed the same as var.stack_monitoring_metric_extensions except keys with no description are omitted"
  value       = { for k, v in oci_stack_monitoring_metric_extension.stack_monitoring_metric_extensions : k => v.description if v.description != null && length(v.description) > 0 }
}
output "stack_monitoring_metric_extensions_display_name" {
  description = "Map of display_name values across all stack_monitoring_metric_extensions, keyed the same as var.stack_monitoring_metric_extensions except keys with no display_name are omitted"
  value       = { for k, v in oci_stack_monitoring_metric_extension.stack_monitoring_metric_extensions : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "stack_monitoring_metric_extensions_enabled_on_resources" {
  description = "Map of enabled_on_resources values across all stack_monitoring_metric_extensions, keyed the same as var.stack_monitoring_metric_extensions except keys with no enabled_on_resources are omitted"
  value       = { for k, v in oci_stack_monitoring_metric_extension.stack_monitoring_metric_extensions : k => v.enabled_on_resources if v.enabled_on_resources != null && length(v.enabled_on_resources) > 0 }
}
output "stack_monitoring_metric_extensions_enabled_on_resources_count" {
  description = "Map of enabled_on_resources_count values across all stack_monitoring_metric_extensions, keyed the same as var.stack_monitoring_metric_extensions except keys with no enabled_on_resources_count are omitted"
  value       = { for k, v in oci_stack_monitoring_metric_extension.stack_monitoring_metric_extensions : k => v.enabled_on_resources_count if v.enabled_on_resources_count != null }
}
output "stack_monitoring_metric_extensions_last_updated_by" {
  description = "Map of last_updated_by values across all stack_monitoring_metric_extensions, keyed the same as var.stack_monitoring_metric_extensions except keys with no last_updated_by are omitted"
  value       = { for k, v in oci_stack_monitoring_metric_extension.stack_monitoring_metric_extensions : k => v.last_updated_by if v.last_updated_by != null && length(v.last_updated_by) > 0 }
}
output "stack_monitoring_metric_extensions_metric_list" {
  description = "Map of metric_list values across all stack_monitoring_metric_extensions, keyed the same as var.stack_monitoring_metric_extensions except keys with no metric_list are omitted"
  value       = { for k, v in oci_stack_monitoring_metric_extension.stack_monitoring_metric_extensions : k => v.metric_list if v.metric_list != null && length(v.metric_list) > 0 }
}
output "stack_monitoring_metric_extensions_name" {
  description = "Map of name values across all stack_monitoring_metric_extensions, keyed the same as var.stack_monitoring_metric_extensions except keys with no name are omitted"
  value       = { for k, v in oci_stack_monitoring_metric_extension.stack_monitoring_metric_extensions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "stack_monitoring_metric_extensions_publish_trigger" {
  description = "Map of publish_trigger values across all stack_monitoring_metric_extensions, keyed the same as var.stack_monitoring_metric_extensions except keys with no publish_trigger are omitted"
  value       = { for k, v in oci_stack_monitoring_metric_extension.stack_monitoring_metric_extensions : k => v.publish_trigger if v.publish_trigger != null }
}
output "stack_monitoring_metric_extensions_query_properties" {
  description = "Map of query_properties values across all stack_monitoring_metric_extensions, keyed the same as var.stack_monitoring_metric_extensions except keys with no query_properties are omitted"
  value       = { for k, v in oci_stack_monitoring_metric_extension.stack_monitoring_metric_extensions : k => one(v.query_properties) if v.query_properties != null && length(v.query_properties) > 0 }
}
output "stack_monitoring_metric_extensions_resource_type" {
  description = "Map of resource_type values across all stack_monitoring_metric_extensions, keyed the same as var.stack_monitoring_metric_extensions except keys with no resource_type are omitted"
  value       = { for k, v in oci_stack_monitoring_metric_extension.stack_monitoring_metric_extensions : k => v.resource_type if v.resource_type != null && length(v.resource_type) > 0 }
}
output "stack_monitoring_metric_extensions_resource_uri" {
  description = "Map of resource_uri values across all stack_monitoring_metric_extensions, keyed the same as var.stack_monitoring_metric_extensions except keys with no resource_uri are omitted"
  value       = { for k, v in oci_stack_monitoring_metric_extension.stack_monitoring_metric_extensions : k => v.resource_uri if v.resource_uri != null && length(v.resource_uri) > 0 }
}
output "stack_monitoring_metric_extensions_state" {
  description = "Map of state values across all stack_monitoring_metric_extensions, keyed the same as var.stack_monitoring_metric_extensions except keys with no state are omitted"
  value       = { for k, v in oci_stack_monitoring_metric_extension.stack_monitoring_metric_extensions : k => v.state if v.state != null && length(v.state) > 0 }
}
output "stack_monitoring_metric_extensions_status" {
  description = "Map of status values across all stack_monitoring_metric_extensions, keyed the same as var.stack_monitoring_metric_extensions except keys with no status are omitted"
  value       = { for k, v in oci_stack_monitoring_metric_extension.stack_monitoring_metric_extensions : k => v.status if v.status != null && length(v.status) > 0 }
}
output "stack_monitoring_metric_extensions_tenant_id" {
  description = "Map of tenant_id values across all stack_monitoring_metric_extensions, keyed the same as var.stack_monitoring_metric_extensions except keys with no tenant_id are omitted"
  value       = { for k, v in oci_stack_monitoring_metric_extension.stack_monitoring_metric_extensions : k => v.tenant_id if v.tenant_id != null && length(v.tenant_id) > 0 }
}
output "stack_monitoring_metric_extensions_time_created" {
  description = "Map of time_created values across all stack_monitoring_metric_extensions, keyed the same as var.stack_monitoring_metric_extensions except keys with no time_created are omitted"
  value       = { for k, v in oci_stack_monitoring_metric_extension.stack_monitoring_metric_extensions : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "stack_monitoring_metric_extensions_time_updated" {
  description = "Map of time_updated values across all stack_monitoring_metric_extensions, keyed the same as var.stack_monitoring_metric_extensions except keys with no time_updated are omitted"
  value       = { for k, v in oci_stack_monitoring_metric_extension.stack_monitoring_metric_extensions : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

