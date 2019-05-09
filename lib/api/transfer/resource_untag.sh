p6_aws_transfer_resource_untag() {
    local arn="$1"
    local tag_keys="$2"
    shift 2

    p6_log_or_run aws transfer untag-resource --arn $arn --tag-keys $tag_keys "$@"
}
