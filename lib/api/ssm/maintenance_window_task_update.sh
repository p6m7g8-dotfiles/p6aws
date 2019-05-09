p6_aws_ssm_maintenance_window_task_update() {
    local window_id="$1"
    local window_task_id="$2"
    shift 2

    p6_log_or_run aws ssm update-maintenance-window-task --window-id $window_id --window-task-id $window_task_id "$@"
}
