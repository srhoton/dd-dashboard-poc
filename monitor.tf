resource "datadog_monitor_json" "destroy_latency" {
monitor = <<-EOF
{
	"name": "Resource ${var.controller_path}${var.controller_name}_destroy has an abnormal change in latency on env:prd",
	"type": "query alert",
	"query": "avg(last_4h):anomalies(p50:trace.rack.request{env:prd,service:${var.api_controller_name},resource_name:${var.controller_path}${var.controller_name}_destroy}, 'basic', 2, direction='above', interval=60, alert_window='last_10m') >= 1",
	"message": "${var.controller_path}${var.controller_name} destroy throughput deviated too much from its usual value.",
	"tags": [
		"env:prd",
		"service:${var.api_controller_name}",
		"resource_name:${var.controller_path}${var.controller_name}_destroy"
	],
	"options": {
		"thresholds": {
			"critical": 1,
			"critical_recovery": 0
		},
		"notify_audit": false,
		"require_full_window": false,
		"notify_no_data": false,
		"renotify_interval": 0,
		"threshold_windows": {
			"trigger_window": "last_10m",
			"recovery_window": "last_5m"
		},
		"include_tags": true,
		"new_host_delay": 300,
		"silenced": {}
	},
	"priority": null,
	"restricted_roles": null
}
EOF
}

resource "datadog_monitor_json" "update_latency" {
monitor = <<-EOF
{
	"name": "Resource ${var.controller_path}${var.controller_name}_update has an abnormal change in latency on env:prd",
	"type": "query alert",
	"query": "avg(last_4h):anomalies(p50:trace.rack.request{env:prd,service:${var.api_controller_name},resource_name:${var.controller_path}${var.controller_name}_update}, 'basic', 2, direction='above', interval=60, alert_window='last_10m') >= 1",
	"message": "${var.controller_path}${var.controller_name} update throughput deviated too much from its usual value.",
	"tags": [
		"env:prd",
		"service:${var.api_controller_name}",
		"resource_name:${var.controller_path}${var.controller_name}_update"
	],
	"options": {
		"thresholds": {
			"critical": 1,
			"critical_recovery": 0
		},
		"notify_audit": false,
		"require_full_window": false,
		"notify_no_data": false,
		"renotify_interval": 0,
		"threshold_windows": {
			"trigger_window": "last_10m",
			"recovery_window": "last_5m"
		},
		"include_tags": true,
		"new_host_delay": 300,
		"silenced": {}
	},
	"priority": null,
	"restricted_roles": null
}
EOF
}

resource "datadog_monitor_json" "create_latency" {
monitor = <<-EOF
{
	"name": "Resource ${var.controller_path}${var.controller_name}_create has an abnormal change in latency on env:prd",
	"type": "query alert",
	"query": "avg(last_4h):anomalies(p50:trace.rack.request{env:prd,service:${var.api_controller_name},resource_name:${var.controller_path}${var.controller_name}_create}, 'basic', 2, direction='above', interval=60, alert_window='last_10m') >= 1",
	"message": "${var.controller_path}${var.controller_name} create throughput deviated too much from its usual value.",
	"tags": [
		"env:prd",
		"service:${var.api_controller_name}",
		"resource_name:${var.controller_path}${var.controller_name}_create"
	],
	"options": {
		"thresholds": {
			"critical": 1,
			"critical_recovery": 0
		},
		"notify_audit": false,
		"require_full_window": false,
		"notify_no_data": false,
		"renotify_interval": 0,
		"threshold_windows": {
			"trigger_window": "last_10m",
			"recovery_window": "last_5m"
		},
		"include_tags": true,
		"new_host_delay": 300,
		"silenced": {}
	},
	"priority": null,
	"restricted_roles": null
}
EOF
}

resource "datadog_monitor_json" "show_latency" {
monitor = <<-EOF
{
	"name": "Resource ${var.controller_path}${var.controller_name}_show has an abnormal change in latency on env:prd",
	"type": "query alert",
	"query": "avg(last_4h):anomalies(p50:trace.rack.request{env:prd,service:${var.api_controller_name},resource_name:${var.controller_path}${var.controller_name}_show}, 'basic', 2, direction='above', interval=60, alert_window='last_10m') >= 1",
	"message": "${var.controller_path}${var.controller_name} show throughput deviated too much from its usual value.",
	"tags": [
		"env:prd",
		"service:${var.api_controller_name}",
		"resource_name:${var.controller_path}${var.controller_name}_show"
	],
	"options": {
		"thresholds": {
			"critical": 1,
			"critical_recovery": 0
		},
		"notify_audit": false,
		"require_full_window": false,
		"notify_no_data": false,
		"renotify_interval": 0,
		"threshold_windows": {
			"trigger_window": "last_10m",
			"recovery_window": "last_5m"
		},
		"include_tags": true,
		"new_host_delay": 300,
		"silenced": {}
	},
	"priority": null,
	"restricted_roles": null
}
EOF
}

resource "datadog_monitor_json" "show_latency" {
monitor = <<-EOF
{
	"name": "Resource ${var.controller_path}${var.controller_name}_show has an abnormal change in latency on env:prd",
	"type": "query alert",
	"query": "avg(last_4h):anomalies(p50:trace.rack.request{env:prd,service:${var.api_controller_name},resource_name:${var.controller_path}${var.controller_name}_show}, 'basic', 2, direction='above', interval=60, alert_window='last_10m') >= 1",
	"message": "${var.controller_path}${var.controller_name} show throughput deviated too much from its usual value.",
	"tags": [
		"env:prd",
		"service:${var.api_controller_name}",
		"resource_name:${var.controller_path}${var.controller_name}_show"
	],
	"options": {
		"thresholds": {
			"critical": 1,
			"critical_recovery": 0
		},
		"notify_audit": false,
		"require_full_window": false,
		"notify_no_data": false,
		"renotify_interval": 0,
		"threshold_windows": {
			"trigger_window": "last_10m",
			"recovery_window": "last_5m"
		},
		"include_tags": true,
		"new_host_delay": 300,
		"silenced": {}
	},
	"priority": null,
	"restricted_roles": null
}
EOF
}

resource "datadog_monitor_json" "show_count" {
  monitor = <<-EOF
{
	"name": "Resource ${var.controller_path}${var.controller_name}_show has an abnormal change in count on env:prd",
	"type": "query alert",
	"query": "avg(last_4h):anomalies(sum:trace.rack.request.hits.by_http_status{env:prd,resource_name:${var.controller_path}${var.controller_name}_show} by {http.status_code}.as_count(), 'basic', 2, direction='above', interval=60, alert_window='last_10m') >= 1",
	"message": "${var.controller_path}${var.controller_name} show request count deviated too much from its usual value.",
	"tags": [
		"env:prd",
		"service:${var.api_controller_name}",
		"resource_name:${var.controller_path}${var.controller_name}_show"
	],
	"options": {
		"thresholds": {
			"critical": 1,
			"critical_recovery": 0
		},
		"notify_audit": false,
		"require_full_window": false,
		"notify_no_data": false,
		"renotify_interval": 0,
		"threshold_windows": {
			"trigger_window": "last_10m",
			"recovery_window": "last_5m"
		},
		"include_tags": true,
		"new_group_delay": 60,
		"silenced": {}
	},
	"priority": null,
	"restricted_roles": null
}
EOF

}
resource "datadog_monitor_json" "update_count" {
  monitor = <<-EOF
{
	"name": "Resource ${var.controller_path}${var.controller_name}_update has an abnormal change in count on env:prd",
	"type": "query alert",
	"query": "avg(last_4h):anomalies(sum:trace.rack.request.hits.by_http_status{env:prd,resource_name:${var.controller_path}${var.controller_name}_update} by {http.status_code}.as_count(), 'basic', 2, direction='above', interval=60, alert_window='last_10m') >= 1",
	"message": "${var.controller_path}${var.controller_name} update request count deviated too much from its usual value.",
	"tags": [
		"env:prd",
		"service:${var.api_controller_name}",
		"resource_name:${var.controller_path}${var.controller_name}_update"
	],
	"options": {
		"thresholds": {
			"critical": 1,
			"critical_recovery": 0
		},
		"notify_audit": false,
		"require_full_window": false,
		"notify_no_data": false,
		"renotify_interval": 0,
		"threshold_windows": {
			"trigger_window": "last_10m",
			"recovery_window": "last_5m"
		},
		"include_tags": true,
		"new_group_delay": 60,
		"silenced": {}
	},
	"priority": null,
	"restricted_roles": null
}
EOF

}
resource "datadog_monitor_json" "create_count" {
  monitor = <<-EOF
{
	"name": "Resource ${var.controller_path}${var.controller_name}_create has an abnormal change in count on env:prd",
	"type": "query alert",
	"query": "avg(last_4h):anomalies(sum:trace.rack.request.hits.by_http_status{env:prd,resource_name:${var.controller_path}${var.controller_name}_create} by {http.status_code}.as_count(), 'basic', 2, direction='above', interval=60, alert_window='last_10m') >= 1",
	"message": "${var.controller_path}${var.controller_name} create request count deviated too much from its usual value.",
	"tags": [
		"env:prd",
		"service:${var.api_controller_name}",
		"resource_name:${var.controller_path}${var.controller_name}_create"
	],
	"options": {
		"thresholds": {
			"critical": 1,
			"critical_recovery": 0
		},
		"notify_audit": false,
		"require_full_window": false,
		"notify_no_data": false,
		"renotify_interval": 0,
		"threshold_windows": {
			"trigger_window": "last_10m",
			"recovery_window": "last_5m"
		},
		"include_tags": true,
		"new_group_delay": 60,
		"silenced": {}
	},
	"priority": null,
	"restricted_roles": null
}
EOF

}
resource "datadog_monitor_json" "destroy_count" {
  monitor = <<-EOF
{
	"name": "Resource ${var.controller_path}${var.controller_name}_destroy has an abnormal change in count on env:prd",
	"type": "query alert",
	"query": "avg(last_4h):anomalies(sum:trace.rack.request.hits.by_http_status{env:prd,resource_name:${var.controller_path}${var.controller_name}_destroy} by {http.status_code}.as_count(), 'basic', 2, direction='above', interval=60, alert_window='last_10m') >= 1",
	"message": "${var.controller_path}${var.controller_name} destroy request count deviated too much from its usual value.",
	"tags": [
		"env:prd",
		"service:${var.api_controller_name}",
		"resource_name:${var.controller_path}${var.controller_name}_destroy"
	],
	"options": {
		"thresholds": {
			"critical": 1,
			"critical_recovery": 0
		},
		"notify_audit": false,
		"require_full_window": false,
		"notify_no_data": false,
		"renotify_interval": 0,
		"threshold_windows": {
			"trigger_window": "last_10m",
			"recovery_window": "last_5m"
		},
		"include_tags": true,
		"new_group_delay": 60,
		"silenced": {}
	},
	"priority": null,
	"restricted_roles": null
}
EOF

}
