p6_aws_ssm_maintenance_window_targets_describe() {
    local window_id="$1"
    shift 1

    p6_log_and_run aws ssm describe-maintenance-window-targets --window-id $window_id "$@"
}
