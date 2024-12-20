# shellcheck shell=bash
######################################################################
#<
#
# Function: p6_aws_svc_ec2_tgws_list()
#
#>
######################################################################
p6_aws_svc_ec2_tgws_list() {

    local tag_name
    tag_name=$(p6_aws_cli_jq_tag_name_get)

    p6_aws_cli_cmd ec2 describe-transit-gateways \
        --output text \
        --filter "Name=state,Values=available" \
        --query "'TransitGateways[].[TransitGatewayArn, OwnerId, $tag_name]'"
}

######################################################################
#<
#
# Function: p6_aws_svc_ec2_tgw_show(tgw_id)
#
#  Args:
#	tgw_id -
#
#>
######################################################################
p6_aws_svc_ec2_tgw_show() {
    local tgw_id="$1"

    p6_aws_cli_cmd ec2 describe-transit-gateways --transit-gateway-id "$tgw_id"
}

######################################################################
#<
#
# Function: p6_aws_svc_ec2_tgw_attachments_list(tgw_id)
#
#  Args:
#	tgw_id -
#
#>
######################################################################
p6_aws_svc_ec2_tgw_attachments_list() {
    local tgw_id="$1"

    local tag_name
    tag_name=$(p6_aws_cli_jq_tag_name_get)

    p6_aws_cli_cmd ec2 describe-transit-gateway-attachments --output text --filters "Name=transit-gateway-id,Values=$tgw_id" --query "'TransitGatewayAttachments[].[TransitGatewayAttachmentId, TransitGatewayId, ResourceOwnerId, ResourceId, $tag_name]'"
}

######################################################################
#<
#
# Function: p6_aws_svc_ec2_tgw_routes_list(tgw_id)
#
#  Args:
#	tgw_id -
#
#>
######################################################################
p6_aws_svc_ec2_tgw_routes_list() {
    local tgw_id="$1"

    local tag_name
    tag_name=$(p6_aws_cli_jq_tag_name_get)

    p6_aws_cli_cmd ec2 describe-transit-gateway-route-tables --filters "Name=transit-gateway-id,Values=$tgw_id"
}
