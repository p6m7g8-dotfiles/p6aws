p6_aws_workspaces_tags_delete() {
    local resource_id="$1"
    local tag_keys="$2"
    shift 2

    p6_log_or_run aws workspaces delete-tags --resource-id $resource_id --tag-keys $tag_keys "$@"
}
