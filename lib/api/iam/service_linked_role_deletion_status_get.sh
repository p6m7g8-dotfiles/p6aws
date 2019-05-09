p6_aws_iam_service_linked_role_deletion_status_get() {
    local deletion_task_id="$1"
    shift 1

    p6_log_and_run aws iam get-service-linked-role-deletion-status --deletion-task-id $deletion_task_id "$@"
}
