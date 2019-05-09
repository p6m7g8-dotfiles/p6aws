p6_aws_kinesisanalytics_application_input_add() {
    local application_name="$1"
    local current_application_version_id="$2"
    local input="$3"
    shift 3

    p6_log_or_run aws kinesisanalytics add-application-input --application-name $application_name --current-application-version-id $current_application_version_id --input $input "$@"
}
