p6_aws_pinpoint_user_endpoints_get() {
    local application_id="$1"
    local user_id="$2"
    shift 2

    p6_log_and_run aws pinpoint get-user-endpoints --application-id $application_id --user-id $user_id "$@"
}
