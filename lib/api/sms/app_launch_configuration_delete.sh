p6_aws_sms_app_launch_configuration_delete() {

    p6_log_or_run aws sms delete-app-launch-configuration "$@"
}
