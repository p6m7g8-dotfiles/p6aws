p6_aws_ecr_lifecycle_policy_put() {
    local repository_name="$1"
    local lifecycle_policy_text="$2"
    shift 2

    p6_log_or_run aws ecr put-lifecycle-policy --repository-name $repository_name --lifecycle-policy-text $lifecycle_policy_text "$@"
}
