p6_aws_ecs_tasks_describe() {
    local tasks="$1"
    shift 1

    p6_log_and_run aws ecs describe-tasks --tasks $tasks "$@"
}
