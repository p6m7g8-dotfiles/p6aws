p6_aws_kinesisanalyticsv2_application_cloud_watch_logging_option_delete() {
    local application_name="$1"
    local current_application_version_id="$2"
    local cloud_watch_logging_option_id="$3"
    shift 3

    p6_log_or_run aws kinesisanalyticsv2 delete-application-cloud-watch-logging-option --application-name $application_name --current-application-version-id $current_application_version_id --cloud-watch-logging-option-id $cloud_watch_logging_option_id "$@"
}
