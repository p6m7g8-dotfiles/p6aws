p6_aws_ecs_task_run() {
    local task_definition="$1"
    shift 1

    p6_log_or_run aws ecs run-task --task-definition $task_definition "$@"
}
