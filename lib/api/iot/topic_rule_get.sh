p6_aws_iot_topic_rule_get() {
    local rule_name="$1"
    shift 1

    p6_log_and_run aws iot get-topic-rule --rule-name $rule_name "$@"
}
