p6_aws_serverlessrepo_application_policy_put() {
    local application_id="$1"
    local statements="$2"
    shift 2

    p6_log_or_run aws serverlessrepo put-application-policy --application-id $application_id --statements $statements "$@"
}
