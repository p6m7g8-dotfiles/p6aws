p6_aws_ecs_services_describe() {
    local services="$1"
    shift 1

    p6_log_and_run aws ecs describe-services --services $services "$@"
}
