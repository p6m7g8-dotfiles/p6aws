p6_aws_sns_subscription_attributes_get() {
    local subscription_arn="$1"
    shift 1

    p6_log_and_run aws sns get-subscription-attributes --subscription-arn $subscription_arn "$@"
}
