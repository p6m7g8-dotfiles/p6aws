p6_aws_route53_query_logging_config_create() {
    local hosted_zone_id="$1"
    local cloud_watch_logs_log_group_arn="$2"
    shift 2

    p6_log_or_run aws route53 create-query-logging-config --hosted-zone-id $hosted_zone_id --cloud-watch-logs-log-group-arn $cloud_watch_logs_log_group_arn "$@"
}
