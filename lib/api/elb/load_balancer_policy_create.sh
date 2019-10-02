######################################################################
#<
#
# Function:
#	p6_aws_elb_load_balancer_policy_create(load_balancer_name, policy_name, policy_type_name)
#
#  Args:
#	load_balancer_name - 
#	policy_name - 
#	policy_type_name - 
#
#>
######################################################################
p6_aws_elb_load_balancer_policy_create() {
    local load_balancer_name="$1"
    local policy_name="$2"
    local policy_type_name="$3"
    shift 3

    p6_run_write_cmd aws elb create-load-balancer-policy --load-balancer-name $load_balancer_name --policy-name $policy_name --policy-type-name $policy_type_name "$@"
}