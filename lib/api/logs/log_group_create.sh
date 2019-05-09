p6_aws_logs_log_group_create() {
    local log_group_name="$1"
    shift 1

    p6_log_or_run aws logs create-log-group --log-group-name $log_group_name "$@"
}
