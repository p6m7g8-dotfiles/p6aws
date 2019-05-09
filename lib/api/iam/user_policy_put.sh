p6_aws_iam_user_policy_put() {
    local user_name="$1"
    local policy_name="$2"
    local policy_document="$3"
    shift 3

    p6_log_or_run aws iam put-user-policy --user-name $user_name --policy-name $policy_name --policy-document $policy_document "$@"
}
