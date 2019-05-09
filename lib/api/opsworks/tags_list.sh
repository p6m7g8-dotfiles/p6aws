p6_aws_opsworks_tags_list() {
    local resource_arn="$1"
    shift 1

    p6_log_and_run aws opsworks list-tags --resource-arn $resource_arn "$@"
}
