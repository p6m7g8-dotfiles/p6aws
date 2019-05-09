p6_aws_sns_platform_application_attributes_set() {
    local platform_application_arn="$1"
    local attributes="$2"
    shift 2

    p6_log_or_run aws sns set-platform-application-attributes --platform-application-arn $platform_application_arn --attributes $attributes "$@"
}
