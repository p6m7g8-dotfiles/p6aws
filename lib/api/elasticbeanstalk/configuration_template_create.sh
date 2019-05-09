p6_aws_elasticbeanstalk_configuration_template_create() {
    local application_name="$1"
    local template_name="$2"
    shift 2

    p6_log_or_run aws elasticbeanstalk create-configuration-template --application-name $application_name --template-name $template_name "$@"
}
