######################################################################
#<
#
# Function: p6_aws_svc_ec2_network_int_list(vpc_id)
#
#  Args:
#	vpc_id -
#
#>
######################################################################
p6_aws_svc_ec2_network_int_list() {
    local vpc_id="$1"

    p6_aws_cli_cmd ec2 describe-network-interfaces \
        --output text \
        --filters "Name=vpc-id,Values=$vpc_id" \
        --query "'NetworkInterfaces[].[NetworkInterfaceId, VpcId, SubnetId, AvailabilityZone, PrivateIpAddress, Status, Association.PublicIp, TagSet[0].Value]'"

    p6_return_void
}
