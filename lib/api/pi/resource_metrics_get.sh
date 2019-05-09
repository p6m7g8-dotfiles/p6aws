p6_aws_pi_resource_metrics_get() {
    local service_type="$1"
    local identifier="$2"
    local metric_queries="$3"
    local start_time="$4"
    local end_time="$5"
    shift 5

    p6_log_and_run aws pi get-resource-metrics --service-type $service_type --identifier $identifier --metric-queries $metric_queries --start-time $start_time --end-time $end_time "$@"
}
