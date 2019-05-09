p6_aws_ec2_flow_logs_delete() {
    local flow_log_ids="$1"
    shift 1

    p6_log_or_run aws ec2 delete-flow-logs --flow-log-ids $flow_log_ids "$@"
}
