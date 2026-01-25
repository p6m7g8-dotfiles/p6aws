# shellcheck shell=bash

######################################################################
#<
#
# Function: aws_account_id account_id = p6_aws_svc_sts_account_id()
#
#  Returns:
#	aws_account_id - account_id
#
#>
######################################################################
p6_aws_svc_sts_account_id() {

    local account_id=$(p6_aws_svc_sts_whoami | jq -r ".Account")

    p6_return_aws_account_id "$account_id"
}

######################################################################
#<
#
# Function: str role_name = p6_aws_svc_sts_account_role_name()
#
#  Returns:
#	str - role_name
#
#>
######################################################################
p6_aws_svc_sts_account_role_name() {

  local role_name=$(p6_aws_svc_sts_whoami | p6_filter_row_select "Arn" | p6_filter_column_pluck 2 | p6_filter_extract_after "AWSReservedSSO_" | p6_filter_extract_before "_")

  p6_return_str "$role_name"
}
