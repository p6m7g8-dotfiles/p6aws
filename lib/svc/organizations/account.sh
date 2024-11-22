######################################################################
#<
#
# Function: stream  = p6_aws_svc_organizations_accounts_list()
#
#  Returns:
#	stream - 
#
#>
######################################################################
p6_aws_svc_organizations_accounts_list() {

  p6_aws_cli_cmd organizations list-accounts \
    --output text \
    --query "'Accounts[].[Id, Status, JoinedMethod, Arn, Name, Email]'"

  p6_return_stream
}

######################################################################
#<
#
# Function: stream  = p6_aws_svc_organizations_accounts_list_active()
#
#  Returns:
#	stream - 
#
#  Environment:	 ACTIVE
#>
######################################################################
p6_aws_svc_organizations_accounts_list_active() {

  p6_aws_svc_organizations_accounts_list | grep ACTIVE

  p6_return_stream
}

######################################################################
#<
#
# Function: words account_ids = p6_aws_svc_organizations_accounts_list_active_ids()
#
#  Returns:
#	words - account_ids
#
#>
######################################################################
p6_aws_svc_organizations_accounts_list_active_ids() {

  local account_ids=$(p6_aws_svc_organizations_accounts_list_active | awk '{print $1}')

  p6_return_words "$account_ids"
}

######################################################################
#<
#
# Function: list account_ids = p6_aws_svc_organizations_accounts_list_active_ids_as_list()
#
#  Returns:
#	list - account_ids
#
#>
######################################################################
p6_aws_svc_organizations_accounts_list_active_ids_as_list() {

  local account_ids=$(p6_aws_svc_organizations_accounts_list_active_ids | xargs)

  p6_return_words "$account_ids"
}

######################################################################
#<
#
# Function: words account_ids = p6_aws_svc_organizations_account_list_active_ids_without_management()
#
#  Returns:
#	words - account_ids
#
#>
######################################################################
p6_aws_svc_organizations_account_list_active_ids_without_management() {

  local management_account_id=$(p6_aws_svc_organization_management_account_id_get)
  local account_ids=$(p6_aws_svc_organizations_accounts_list_active_ids | grep -v "$management_account_id" | xargs)

  p6_return_words "$account_ids"
}

######################################################################
#<
#
# Function: words account_ids_and_names = p6_aws_svc_organizations_accounts_list_active_ids_and_names()
#
#  Returns:
#	words - account_ids_and_names
#
#>
######################################################################
p6_aws_svc_organizations_accounts_list_active_ids_and_names() {

    local account_ids_and_names=$(p6_aws_svc_organizations_accounts_list_active | awk '{print $5 "=" $1}')

    p6_return_words "$account_ids_and_names"
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
# Function: str account_name = p6_aws_svc_organization_management_account_name_get()
#
#  Returns:
#	str - account_name
#
#>
######################################################################
p6_aws_svc_organization_management_account_name_get() {

  local management_account_id=$(p6_aws_svc_organization_management_account_id_get)
  local account_name=$(p6_aws_svc_organizations_account_name_from_account_id $management_account_id)

  p6_return_str "$account_name"
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
