######################################################################
#<
#
# Function:
#	p6_aws_ssm_instance_associations_status_describe(instance_id)
#
#  Args:
#	instance_id - 
#
#>
######################################################################
p6_aws_ssm_instance_associations_status_describe() {
    local instance_id="$1"
    shift 1

    p6_run_read_cmd aws ssm describe-instance-associations-status --instance-id $instance_id "$@"
}