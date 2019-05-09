p6_aws_logs_log_group_tag() {
    local log_group_name="$1"
    local tags="$2"
    shift 2

    p6_log_or_run aws logs tag-log-group --log-group-name $log_group_name --tags $tags "$@"
}
