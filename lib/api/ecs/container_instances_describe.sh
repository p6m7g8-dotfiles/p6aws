p6_aws_ecs_container_instances_describe() {
    local container_instances="$1"
    shift 1

    p6_log_and_run aws ecs describe-container-instances --container-instances $container_instances "$@"
}
