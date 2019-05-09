aws_dms_event_subscription_modify() {
    local subscription_name="$1"
    shift 1

    cond_log_and_run aws dms modify-event-subscription --subscription-name $subscription_name "$@"
}
