p6_aws_logs_tags_log_group_list() {
    local log_group_name="$1"
    shift 1

    p6_log_and_run aws logs list-tags-log-group --log-group-name $log_group_name "$@"
}
