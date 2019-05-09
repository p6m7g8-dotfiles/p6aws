p6_aws_ecr_repository_policy_delete() {
    local repository_name="$1"
    shift 1

    p6_log_or_run aws ecr delete-repository-policy --repository-name $repository_name "$@"
}
