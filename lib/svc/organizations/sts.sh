######################################################################
#<
#
# Function: p6_aws_svc_organizations_sts_su_un()
#
#  Environment:	 GITHUB_ACTIONS
#>
######################################################################
p6_aws_svc_organizations_sts_local_su_un() {

  p6_aws_svc_sts_role_assume_un

  p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_organizations_sts_su(account_name_or_account_id, account_name_or_account_id)
#
#  Args:
#	account_name_or_account_id -
#	account_name_or_account_id -
#
#  Environment:	 GITHUB_ACTIONS
#>
######################################################################
p6_aws_svc_organizations_sts_su() {
  local account_name_or_account_id="$1"

  if p6_string_eq "$GITHUB_ACTIONS" "true"; then
    p6_aws_svc_organizations_sts_github_su "$account_name_or_account_id"
  else
    p6_aws_svc_organizations_sts_local_su "$account_name_or_account_id"
  fi

  p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_organizations_sts_su_un()
#
#  Environment:	 GITHUB_ACTIONS
#>
######################################################################
p6_aws_svc_organizations_sts_su_un() {

  if p6_string_eq "$GITHUB_ACTIONS" "true"; then
    p6_aws_svc_organizations_sts_github_su_un
  else
    p6_aws_svc_organizations_sts_local_su_un
  fi

  p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_organizations_sts_su(account_name_or_account_id, account_name_or_account_id)
#
#  Args:
#	account_name_or_account_id -
#	account_name_or_account_id -
#
#  Environment:	 GITHUB_ACTIONS
#>
######################################################################
p6_aws_svc_organizations_sts_local_su() {
  local account_name_or_account_id="$1"

  local account_id
  case $account_name_or_account_id in
  [0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]) account_id=$account_name_or_account_id ;;
  *) account_id=$(p6_aws_svc_organizations_account_id_from_account_name "$account_name_or_account_id") ;;
  esac

  local role_session_name="p6cli"
  local new_arn
  new_arn="arn:aws:iam::${account_id}:role/OrganizationAccountAccessRole"

  p6_aws_svc_sts_role_assume "$new_arn" "$role_session_name"

  p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_organizations_sts_run_as(account_name_or_account_id, ...)
#
#  Args:
#	account_name_or_account_id -
#	... - 
#
#>
######################################################################
p6_aws_svc_organizations_sts_run_as() {
  local account_name_or_account_id="$1"
  shift 1

  p6_aws_svc_organizations_sts_su "$account_name_or_account_id"

  p6_run_yield "$*"

  p6_aws_svc_organizations_sts_su_un

  p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_organizations_sts_github_su(account_name_or_account_id)
#
#  Args:
#	account_name_or_account_id -
#
#  Environment:	 AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY AWS_SESSION_TOKEN
#>
######################################################################
p6_aws_svc_organizations_sts_github_su() {
  local account_name_or_account_id="$1"

  local account_id
  case $account_name_or_account_id in
  [0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]) account_id=$account_name_or_account_id ;;
  *) account_id=$(p6_aws_svc_organizations_account_id_from_account_name "$account_name_or_account_id") ;;
  esac

  local role_session_name="p6cli-github"
  local new_arn
  new_arn="arn:aws:iam::${account_id}:role/OrganizationAccountAccessRole"

  local json=$(p6_aws_cli_cmd sts assume-role --role-arn "$new_arn" --role-session-name "$role_session_name")
  local access_key_id=$(p6_json_eval "$json" "-r" ".Credentials.AccessKeyId")
  local secret_access_key=$(p6_json_eval "$json" "-r" ".Credentials.SecretAccessKey")
  local session_token=$(p6_json_eval "$json" "-r" ".Credentials.SessionToken")

  export AWS_ACCESS_KEY_ID="$access_key_id"
  export AWS_SECRET_ACCESS_KEY="$secret_access_key"
  export AWS_SESSION_TOKEN="$session_token"

  p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_organizations_sts_github_su_un()
#
#  Environment:	 AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY AWS_SESSION_TOKEN
#>
######################################################################
p6_aws_svc_organizations_sts_github_su_un() {

  unset AWS_ACCESS_KEY_ID
  unset AWS_SECRET_ACCESS_KEY
  unset AWS_SESSION_TOKEN

  p6_return_void
}
