variable "dd_api_key" {
  type = string
  description = "Datadog API Key"
}
  
variable "dd_app_key" {
  type = string
  description = "Datadog APP Key"
}

variable "dashboard_title" {
  type = string
  description = "Datadog Dashboard Title"
}
  
variable "controller_name" {
  type = string
  description = "The API Controller Name for Datadog to monitor"
}
