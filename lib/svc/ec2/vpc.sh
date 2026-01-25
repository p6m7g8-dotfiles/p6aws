# shellcheck shell=sh
######################################################################
#<
#
# Function: p6_aws_svc_ec2_vpcs_list()
#
#>
######################################################################
p6_aws_svc_ec2_vpcs_list() {

    local tag_name=$(p6_aws_cli_jq_tag_name_get)

    p6_aws_cli_cmd ec2 describe-vpcs \
        --output text \
        --filters "Name=isDefault,Values=false" \
        --query "'Vpcs[].[VpcId, CidrBlock, State, $tag_name]'"

    p6_return_void
}

######################################################################
#<
#
# Function: str vpc_id = p6_aws_svc_ec2_vpc_id_from_vpc_name(vpc_name)
#
#  Args:
#	vpc_name -
#
#  Returns:
#	str - vpc_id
#
#>
######################################################################
p6_aws_svc_ec2_vpc_id_from_vpc_name() {
    local vpc_name="$1"

    local vpc_id=$(p6_aws_svc_ec2_vpcs_list | p6_filter_row_select " ${vpc_name}$" | p6_filter_column_pluck 1)

    p6_return_str "$vpc_id"
}
