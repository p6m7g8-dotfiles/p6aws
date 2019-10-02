######################################################################
#<
#
# Function:
#	p6_aws_iot_policy_detach(policy_name, target)
#
#  Args:
#	policy_name - 
#	target - 
#
#>
######################################################################
p6_aws_iot_policy_detach() {
    local policy_name="$1"
    local target="$2"
    shift 2

    p6_run_write_cmd aws iot detach-policy --policy-name $policy_name --target $target "$@"
}