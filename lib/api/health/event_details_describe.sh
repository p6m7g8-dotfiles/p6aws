p6_aws_health_event_details_describe() {
    local event_arns="$1"
    shift 1

    p6_log_and_run aws health describe-event-details --event-arns $event_arns "$@"
}
