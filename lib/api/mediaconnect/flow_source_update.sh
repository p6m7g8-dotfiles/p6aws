p6_aws_mediaconnect_flow_source_update() {
    local flow_arn="$1"
    local source_arn="$2"
    shift 2

    p6_log_or_run aws mediaconnect update-flow-source --flow-arn $flow_arn --source-arn $source_arn "$@"
}
