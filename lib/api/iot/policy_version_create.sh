p6_aws_iot_policy_version_create() {
    local policy_name="$1"
    local policy_document="$2"
    shift 2

    p6_log_or_run aws iot create-policy-version --policy-name $policy_name --policy-document $policy_document "$@"
}
