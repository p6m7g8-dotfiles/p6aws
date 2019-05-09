p6_aws_workdocs_notification_subscription_create() {
    local organization_id="$1"
    local protocol="$2"
    local subscription_type="$3"
    local notification_endpoint="$4"
    shift 4

    p6_log_or_run aws workdocs create-notification-subscription --organization-id $organization_id --protocol $protocol --subscription-type $subscription_type --notification-endpoint $notification_endpoint "$@"
}
