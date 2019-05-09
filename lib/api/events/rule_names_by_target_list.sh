p6_aws_events_rule_names_by_target_list() {
    local target_arn="$1"
    shift 1

    p6_log_and_run aws events list-rule-names-by-target --target-arn $target_arn "$@"
}
