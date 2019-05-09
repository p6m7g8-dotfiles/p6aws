p6_aws_mq_configuration_revision_describe() {
    local configuration_id="$1"
    local configuration_revision="$2"
    shift 2

    p6_log_and_run aws mq describe-configuration-revision --configuration-id $configuration_id --configuration-revision $configuration_revision "$@"
}
