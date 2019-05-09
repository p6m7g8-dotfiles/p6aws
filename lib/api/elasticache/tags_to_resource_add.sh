p6_aws_elasticache_tags_to_resource_add() {
    local resource_name="$1"
    local tags="$2"
    shift 2

    p6_log_or_run aws elasticache add-tags-to-resource --resource-name $resource_name --tags $tags "$@"
}
