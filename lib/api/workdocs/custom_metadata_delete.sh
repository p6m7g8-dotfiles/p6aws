p6_aws_workdocs_custom_metadata_delete() {
    local resource_id="$1"
    shift 1

    p6_log_or_run aws workdocs delete-custom-metadata --resource-id $resource_id "$@"
}
