p6_aws_logs_log_group_fields_get() {
    local log_group_name="$1"
    shift 1

    p6_log_and_run aws logs get-log-group-fields --log-group-name $log_group_name "$@"
}
