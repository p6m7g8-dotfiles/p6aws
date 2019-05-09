p6_aws_pinpoint_apns_sandbox_channel_update() {
    local apns_sandbox_channel_request="$1"
    local application_id="$2"
    shift 2

    p6_log_or_run aws pinpoint update-apns-sandbox-channel --apns-sandbox-channel-request $apns_sandbox_channel_request --application-id $application_id "$@"
}
