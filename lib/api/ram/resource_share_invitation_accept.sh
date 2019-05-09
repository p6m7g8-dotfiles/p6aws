p6_aws_ram_resource_share_invitation_accept() {
    local resource_share_invitation_arn="$1"
    shift 1

    p6_log_or_run aws ram accept-resource-share-invitation --resource-share-invitation-arn $resource_share_invitation_arn "$@"
}
