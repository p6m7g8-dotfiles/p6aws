p6_aws_opsworks_resource_tag() {
    local resource_arn="$1"
    local tags="$2"
    shift 2

    p6_log_or_run aws opsworks tag-resource --resource-arn $resource_arn --tags $tags "$@"
}
