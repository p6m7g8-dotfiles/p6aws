######################################################################
#<
#
# Function: p6_aws_svc_ec2_rtbs_list(vpc_id)
#
#  Args:
#	vpc_id -
#
#>
######################################################################
p6_aws_svc_ec2_rtbs_list() {
    local vpc_id="$1"

    local tag_name
    tag_name=$(p6_aws_cli_jq_tag_name_get)

    p6_aws_cli_cmd "ec2" "describe-route-tables" \
        --output text \
        --filters "Name=vpc-id,Values=$vpc_id" \
        --query "'RouteTables[].[RouteTableId, Associations[0].SubnetId,Associations[0].RouteTableAssociationId, $tag_name]'"

    local rtb
    for rtb in $(p6_aws_cli_cmd ec2 describe-route-tables --output text --filters "Name=vpc-id,Values=$vpc_id" --query "'RouteTables[].[RouteTableId]'"); do
        p6_msg "=====> $rtb:"
        p6_aws_svc_ec2_rtb_show "$rtb"
    done

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_ec2_rtb_show(rtb_id, vpc_id)
#
#  Args:
#	rtb_id -
#	vpc_id -
#
#>
######################################################################
p6_aws_svc_ec2_rtb_show() {
    local rtb_id="$1"
    local vpc_id="$2"

    local tag_name
    tag_name=$(p6_aws_cli_jq_tag_name_get)

    p6_aws_cli_cmd ec2 describe-route-tables \
        --output text \
        --filters "Name=vpc-id,Values=$vpc_id,Name=route-table-id,Values=$rtb_id" \
        --query "'RouteTables[].[RouteTableId, Associations[0].SubnetId,Associations[0].RouteTableAssociationId, $tag_name]'"

    p6_aws_cli_cmd ec2 describe-route-tables \
        --output text \
        --filters "Name=route-table-id,Values=$rtb_id" \
        --query "'RouteTables[].[Routes[]]'"

    p6_return_void
}
