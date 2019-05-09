p6_aws_inspector_tags_for_resource_list() {
    local resource_arn="$1"
    shift 1

    p6_log_and_run aws inspector list-tags-for-resource --resource-arn $resource_arn "$@"
}
