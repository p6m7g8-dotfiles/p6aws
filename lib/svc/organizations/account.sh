######################################################################
#<
#
# Function: p6_aws_svc_organizations_accounts_list()
#
#>
######################################################################
p6_aws_svc_organizations_accounts_list() {

  p6_aws_cli_cmd organizations list-accounts \
    --output text \
    --query "'Accounts[].[Id, Status, JoinedMethod, Arn, Name, Email]'"
}

######################################################################
#<
#
# Function: p6_aws_svc_organizations_accounts_list_active()
#
#  Environment:	 ACTIVE
#>
######################################################################
p6_aws_svc_organizations_accounts_list_active() {

  p6_aws_svc_organizations_accounts_list | grep ACTIVE
}

######################################################################
#<
#
# Function: aws_account_id account_id = p6_aws_svc_organization_management_account_id_get()
#
#  Returns:
#	aws_account_id - account_id
#
#>
######################################################################
p6_aws_svc_organization_management_account_id_get() {

  local account_id=$(p6_aws_cli_cmd organizations describe-organization --query "Organization.MasterAccountId" --output text)

  p6_return_aws_account_id "$account_id"
}

######################################################################
#<
#
# Function: aws_account_id new_account_id = p6_aws_svc_organizations_account_id_from_account_name(account_name)
#
#  Args:
#	account_name -
#
#  Returns:
#	aws_account_id - new_account_id
#
#>
######################################################################
p6_aws_svc_organizations_account_id_from_account_name() {
  local account_name="$1"

  account_name=$(p6_string_replace "$account_name" '\"')

  local new_account_id
  new_account_id=$(p6_aws_svc_organizations_accounts_list_active | awk -v k="$account_name" '$5 ~ k { print $1 }')

  p6_return_aws_account_id "$new_account_id"
}

######################################################################
#<
#
# Function: str account_name = p6_aws_svc_organizations_account_name_from_account_id(account_id)
#
#  Args:
#	account_id -
#
#  Returns:
#	str - account_name
#
#>
######################################################################
p6_aws_svc_organizations_account_name_from_account_id() {
  local account_id="$1"

  local account_name=$(p6_aws_svc_organizations_accounts_list_active | awk -v k="$account_id" '$1 ~ k { print $5 }')

  p6_return_str "$account_name"
}
