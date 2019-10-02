######################################################################
#<
#
# Function:
#	p6_aws_ssm_replace(window_id, window_target_id, window_id, window_task_id, window_id, baseline_id)
#
#  Args:
#	window_id - 
#	window_target_id - 
#	window_id - 
#	window_task_id - 
#	window_id - 
#	baseline_id - 
#
#>
######################################################################
p6_aws_ssm_replace() {
        local window_id="$1"
        local window_target_id="$2"
        shift 2

    cond_log_and_run aws ssm update-maintenance-window-target --window-id $window_id --window-target-id $window_target_id --replace "$@"
}