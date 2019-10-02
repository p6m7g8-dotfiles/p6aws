######################################################################
#<
#
# Function:
#	p6_aws_route53_traffic_policy_instance_update(id, ttl, traffic_policy_id, traffic_policy_version)
#
#  Args:
#	id - 
#	ttl - 
#	traffic_policy_id - 
#	traffic_policy_version - 
#
#>
######################################################################
p6_aws_route53_traffic_policy_instance_update() {
    local id="$1"
    local ttl="$2"
    local traffic_policy_id="$3"
    local traffic_policy_version="$4"
    shift 4

    p6_run_write_cmd aws route53 update-traffic-policy-instance --id $id --ttl $ttl --traffic-policy-id $traffic_policy_id --traffic-policy-version $traffic_policy_version "$@"
}