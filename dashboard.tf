resource "datadog_dashboard_json" "anomoly_dashboard" {
  dashboard = <<EOF
{
	"title": "${var.dashboard_title}",
	"description": "",
	"widgets": [{
		"definition": {
			"title": "p50 ${var.controller_name}",
			"title_size": "16",
			"title_align": "left",
			"show_legend": true,
			"legend_layout": "vertical",
			"legend_columns": ["avg", "min", "max", "value", "sum"],
      "type": "timeseries",
			"requests": [{
				"formulas": [{
					"alias": "show p50",
					"formula": "anomalies(query1, 'basic', 2)"
				}, {
					"alias": "update p50",
					"formula": "anomalies(query2, 'basic', 2)"
				}, {
					"alias": "create p50",
					"formula": "anomalies(query3, 'basic', 2)"
				}, {
					"alias": "delete p50",
					"formula": "anomalies(query4, 'basic', 2)"
				}],
				"queries": [{
					"data_source": "metrics",
					"name": "query1",
					"query": "p50:trace.rack.request{env:prd,service:${var.controller_api_name},resource_name:${var.controller_path}${var.controller_name}_show} by {env}"
				}, {
					"data_source": "metrics",
					"name": "query2",
					"query": "p50:trace.rack.request{env:prd,service:${var.controller_api_name},resource_name:${var.controller_path}${var.controller_name}_update} by {env}"
				}, {
					"data_source": "metrics",
					"name": "query3",
					"query": "p50:trace.rack.request{env:prd,service:${var.controller_api_name},resource_name:${var.controller_path}${var.controller_name}_create} by {env}"
				}, {
					"data_source": "metrics",
					"name": "query4",
					"query": "p50:trace.rack.request{env:prd,service:${var.controller_api_name},resource_name:${var.controller_path}${var.controller_name}_destroy} by {env}"
				}],
				"response_format": "timeseries",
				"style": {
					"palette": "dog_classic",
					"line_type": "solid",
					"line_width": "normal"
				},
				"display_type": "line"
			}]
		},
		"layout": {
			"x": 0,
			"y": 0,
			"width": 10,
			"height": 4
		}
	}, {
		"definition": {
			"title": "p75 ${var.controller_name}",
			"title_size": "16",
			"title_align": "left",
			"show_legend": true,
			"legend_layout": "vertical",
			"legend_columns": ["avg", "min", "max", "value", "sum"],
			"type": "timeseries",
			"requests": [{
				"formulas": [{
					"alias": "show p75",
					"formula": "anomalies(query1, 'basic', 2)"
				}, {
					"alias": "update p75",
					"formula": "anomalies(query2, 'basic', 2)"
				}, {
					"alias": "create p75",
					"formula": "anomalies(query3, 'basic', 2)"
				}, {
					"alias": "delete p75",
					"formula": "anomalies(query4, 'basic', 2)"
				}],
				"queries": [{
					"data_source": "metrics",
					"name": "query1",
					"query": "p75:trace.rack.request{env:prd,service:${var.controller_api_name},resource_name:${var.controller_path}${var.controller_name}_show} by {env}"
				}, {
					"data_source": "metrics",
					"name": "query2",
					"query": "p75:trace.rack.request{env:prd,service:${var.controller_api_name},resource_name:${var.controller_path}${var.controller_name}_update} by {env}"
				}, {
					"data_source": "metrics",
					"name": "query3",
					"query": "p75:trace.rack.request{env:prd,service:${var.controller_api_name},resource_name:${var.controller_path}${var.controller_name}_create} by {env}"
				}, {
					"data_source": "metrics",
					"name": "query4",
					"query": "p75:trace.rack.request{env:prd,service:${var.controller_api_name},resource_name:${var.controller_path}${var.controller_name}_destroy} by {env}"
				}],
				"response_format": "timeseries",
				"style": {
					"palette": "dog_classic",
					"line_type": "solid",
					"line_width": "normal"
				},
				"display_type": "line"
			}]
		},
		"layout": {
			"x": 0,
			"y": 4,
			"width": 10,
			"height": 4
		}
	}, {
		"definition": {
			"title": "p90 ${var.controller_name}",
			"title_size": "16",
			"title_align": "left",
			"show_legend": true,
			"legend_layout": "vertical",
			"legend_columns": ["avg", "min", "max", "value", "sum"],
			"type": "timeseries",
			"requests": [{
				"formulas": [{
					"alias": "show p90",
					"formula": "anomalies(query1, 'basic', 2)"
				}, {
					"alias": "update p90",
					"formula": "anomalies(query2, 'basic', 2)"
				}, {
					"alias": "create p90",
					"formula": "anomalies(query3, 'basic', 2)"
				}, {
					"alias": "delete p90",
					"formula": "anomalies(query4, 'basic', 2)"
				}],
				"queries": [{
					"data_source": "metrics",
					"name": "query1",
					"query": "p90:trace.rack.request{env:prd,service:${var.controller_api_name},resource_name:${var.controller_path}${var.controller_name}_show} by {env}"
				}, {
					"data_source": "metrics",
					"name": "query2",
					"query": "p90:trace.rack.request{env:prd,service:${var.controller_api_name},resource_name:${var.controller_path}${var.controller_name}_update} by {env}"
				}, {
					"data_source": "metrics",
					"name": "query3",
					"query": "p90:trace.rack.request{env:prd,service:${var.controller_api_name},resource_name:${var.controller_path}${var.controller_name}_create} by {env}"
				}, {
					"data_source": "metrics",
					"name": "query4",
					"query": "p90:trace.rack.request{env:prd,service:${var.controller_api_name},resource_name:${var.controller_path}${var.controller_name}_destroy} by {env}"
				}],
				"response_format": "timeseries",
				"style": {
					"palette": "dog_classic",
					"line_type": "solid",
					"line_width": "normal"
				},
				"display_type": "line"
			}]
		},
		"layout": {
			"x": 0,
			"y": 8,
			"width": 10,
			"height": 4
		}
	}, {
		"definition": {
			"title": "${var.controller_name} Hits By Status",
			"title_size": "16",
			"title_align": "left",
			"show_legend": true,
			"legend_layout": "vertical",
			"legend_columns": ["avg", "min", "max", "value", "sum"],
			"type": "timeseries",
			"requests": [{
				"formulas": [{
					"alias": "show count",
					"formula": "anomalies(query1, 'basic', 2)"
				}, {
					"alias": "destroy count",
					"formula": "anomalies(query2, 'basic', 2)"
				}, {
					"alias": "create count",
					"formula": "anomalies(query3, 'basic', 2)"
				}, {
					"alias": "update count",
					"formula": "anomalies(query4, 'basic', 2)"
				}],
				"queries": [{
					"name": "query1",
					"data_source": "metrics",
					"query": "sum:trace.rack.request.hits.by_http_status{env:prd,resource_name:${var.controller_path}${var.controller_name}_show} by {http.status_code}.as_count()"
				}, {
					"name": "query2",
					"data_source": "metrics",
					"query": "sum:trace.rack.request.hits.by_http_status{env:prd,resource_name:${var.controller_path}${var.controller_name}_destroy} by {http.status_code}.as_count()"
				}, {
					"name": "query3",
					"data_source": "metrics",
					"query": "sum:trace.rack.request.hits.by_http_status{env:prd,resource_name:${var.controller_path}${var.controller_name}_create} by {http.status_code}.as_count()"
				}, {
					"name": "query4",
					"data_source": "metrics",
					"query": "sum:trace.rack.request.hits.by_http_status{env:prd,resource_name:${var.controller_path}${var.controller_name}_update} by {http.status_code}.as_count()"
				}],
				"response_format": "timeseries",
				"style": {
					"palette": "semantic",
					"line_type": "solid",
					"line_width": "normal"
				},
				"display_type": "line"
			}]
		},
		"layout": {
			"x": 0,
			"y": 12,
			"width": 10,
			"height": 4
		}
	}],
	"template_variables": [],
	"layout_type": "ordered",
	"notify_list": [],
	"reflow_type": "fixed",
	"id": "c7v-5ix-cnd"
}
EOF
}
