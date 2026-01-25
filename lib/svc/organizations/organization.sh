# shellcheck shell=bash

######################################################################
#<
#
# Function: p6_aws_svc_organizations_id_get()
#
#>
######################################################################
p6_aws_svc_organizations_id_get() {

  local organization_id=$(p6_aws_cli_cmd organizations describe-organization --query "Organization.Id" --output text)

  p6_return_aws_organization_id "$organization_id"
}

######################################################################
#<
#
# Function: aws_account_id master_account_id = p6_aws_svc_organizations_management_account_id_get()
#
#  Returns:
#	aws_account_id - master_account_id
#
#>
######################################################################
p6_aws_svc_organizations_management_account_id_get() {

  local master_account_id=$(p6_aws_cli_cmd organizations describe-organization --query "Organization.MasterAccountId" --output text)

  p6_return_aws_account_id "$master_account_id"
}

######################################################################
#<
#
# Function: str management_account_name = p6_aws_svc_organizations_management_account_name_get()
#
#  Returns:
#	str - management_account_name
#
#>
######################################################################
p6_aws_svc_organizations_management_account_name_get() {

  local management_account_name=$(p6_aws_cli_cmd organizations describe-organization --query "Organization.MasterAccountEmail" --output text | p6_filter_column_pluck 2 "@" | p6_filter_column_pluck 1 ".")

  p6_return_str "$management_account_name"
}
