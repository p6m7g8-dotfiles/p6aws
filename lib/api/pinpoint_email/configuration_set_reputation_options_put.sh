p6_aws_pinpoint_email_configuration_set_reputation_options_put() {
    local configuration_set_name="$1"
    shift 1

    p6_log_or_run aws pinpoint-email put-configuration-set-reputation-options --configuration-set-name $configuration_set_name "$@"
}
