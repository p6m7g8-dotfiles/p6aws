######################################################################
#<
#
# Function:
#	p6_aws_ssm_maintenance_window_get(window_id)
#
#  Args:
#	window_id - 
#
#>
######################################################################
p6_aws_ssm_maintenance_window_get() {
    local window_id="$1"
    shift 1

    p6_run_read_cmd aws ssm get-maintenance-window --window-id $window_id "$@"
}