p6_aws_iot_policy_get() {
    local policy_name="$1"
    shift 1

    p6_log_and_run aws iot get-policy --policy-name $policy_name "$@"
}
