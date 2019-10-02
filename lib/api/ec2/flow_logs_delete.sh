######################################################################
#<
#
# Function:
#	p6_aws_ec2_flow_logs_delete(flow_log_ids)
#
#  Args:
#	flow_log_ids - 
#
#>
######################################################################
p6_aws_ec2_flow_logs_delete() {
    local flow_log_ids="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-flow-logs --flow-log-ids $flow_log_ids "$@"
}