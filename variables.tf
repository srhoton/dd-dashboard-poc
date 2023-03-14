variable "dashboard_title" {
  type = string
  description = "Datadog Dashboard Title"
}
  
variable "controller_name" {
  type = string
  description = "The API Controller Name for Datadog to monitor"
}

variable "controller_path" {
  type = string
  description = "The API Controller Path for Datadog to monitor"
}

variable "controller_api_name" {
  type = string
  description = "The API Controller API Name for Datadog to monitor"
}
