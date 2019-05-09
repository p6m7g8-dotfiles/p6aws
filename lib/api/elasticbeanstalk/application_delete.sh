p6_aws_elasticbeanstalk_application_delete() {
    local application_name="$1"
    shift 1

    p6_log_or_run aws elasticbeanstalk delete-application --application-name $application_name "$@"
}
