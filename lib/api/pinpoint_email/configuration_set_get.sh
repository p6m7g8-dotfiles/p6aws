p6_aws_pinpoint_email_configuration_set_get() {
    local configuration_set_name="$1"
    shift 1

    p6_log_and_run aws pinpoint-email get-configuration-set --configuration-set-name $configuration_set_name "$@"
}
