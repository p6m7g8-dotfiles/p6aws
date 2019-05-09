p6_aws_kinesisanalyticsv2_application_delete() {
    local application_name="$1"
    local create_timestamp="$2"
    shift 2

    p6_log_or_run aws kinesisanalyticsv2 delete-application --application-name $application_name --create-timestamp $create_timestamp "$@"
}
