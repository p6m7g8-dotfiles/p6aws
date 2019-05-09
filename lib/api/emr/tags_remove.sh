p6_aws_emr_tags_remove() {
    local resource_id="$1"
    local tag_keys="$2"
    shift 2

    p6_log_or_run aws emr remove-tags --resource-id $resource_id --tag-keys $tag_keys "$@"
}
