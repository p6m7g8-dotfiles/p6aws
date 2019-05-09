p6_aws_iam_group_policy_delete() {
    local group_name="$1"
    local policy_name="$2"
    shift 2

    p6_log_or_run aws iam delete-group-policy --group-name $group_name --policy-name $policy_name "$@"
}
