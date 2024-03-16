######################################################################
#<
#
# Function: words env_vars = p6_aws_cfg_vars_min()
#
#  Returns:
#	words - env_vars
#
#  Environment:	 AWS_DEFAULT_PROFILE AWS_DEFAULT_REGION AWS_ORG
#>
######################################################################
p6_aws_cfg_vars_min() {

	local env_vars=" \
	  AWS_ORG \
	  AWS_DEFAULT_PROFILE \
	  AWS_DEFAULT_REGION"

	p6_return_words "$env_vars"
}

######################################################################
#<
#
# Function: words env_vars = p6_aws_cfg_vars_secret()
#
#  Returns:
#	words - env_vars
#
#  Environment:	 AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY AWS_SESSION_TOKEN
#>
######################################################################
p6_aws_cfg_vars_secret() {

	local env_vars=" \
	  AWS_SESSION_TOKEN \
	  AWS_ACCESS_KEY_ID \
	  AWS_SECRET_ACCESS_KEY"

	p6_return_words "$env_vars"
}

######################################################################
#<
#
# Function: words env_vars = p6_aws_cfg_vars_config()
#
#  Returns:
#	words - env_vars
#
#  Environment:	 AWS_CA_BUNDLE AWS_METADATA_SERVICE_NUM_ATTEMPTS AWS_METADATA_SERVICE_TIMEOUT AWS_OUTPUT AWS_REGION
#>
######################################################################
p6_aws_cfg_vars_config() {

	local env_vars=" \
	  AWS_REGION
	  AWS_CA_BUNDLE \
	  AWS_METADATA_SERVICE_TIMEOUT \
	  AWS_METADATA_SERVICE_NUM_ATTEMPTS \
	  AWS_OUTPUT"

	p6_return_words "$env_vars"
}

######################################################################
#<
#
# Function: words env_vars = p6_aws_cfg_vars_sso()
#
#  Returns:
#	words - env_vars
#
#  Environment:	 AWS_DEFAULT_SSO_REGION AWS_DEFAULT_SSO_START_URL AWS_SSO_ACCOUNT_ID AWS_SSO_ACCOUNT_NAME AWS_SSO_REGION AWS_SSO_ROLE_NAME AWS_SSO_START_URL
#>
######################################################################
p6_aws_cfg_vars_sso() {

 local env_vars=" \
	AWS_DEFAULT_SSO_START_URL \
 	AWS_DEFAULT_SSO_REGION \
	AWS_SSO_START_URL \
	AWS_SSO_REGION \
	AWS_SSO_ACCOUNT_NAME \
	AWS_SSO_ACCOUNT_ID \
	AWS_SSO_ROLE_NAME"

 p6_return_words "$env_vars"
}

######################################################################
#<
#
# Function: words env_vars = p6_aws_cfg_vars()
#
#  Returns:
#	words - env_vars
#
#  Environment:	 AWS_CODEBUILD_PROJECT_NAME AWS_CONFIG_FILE AWS_EKS_CLUSTER_NAME AWS_ENV AWS_ENV_TAG AWS_PROFILE AWS_SHARED_CREDENTIALS_FILE AWS_VPC_ID
#>
######################################################################
p6_aws_cfg_vars() {

	local env_vars=" \
	  AWS_VPC_ID \
	  AWS_EKS_CLUSTER_NAME \
	  AWS_CODEBUILD_PROJECT_NAME \
	  AWS_ENV_TAG \
	  AWS_ENV \
	  AWS_PROFILE \
	  AWS_CONFIG_FILE \
	  AWS_SHARED_CREDENTIALS_FILE"

	env_vars="$env_vars $(p6_aws_cfg_vars_secret) $(p6_aws_cfg_vars_config) $(p6_aws_cfg_vars_min) $(p6_aws_cfg_vars_sso)"

	p6_return_words "$env_vars"
}

######################################################################
#<
#
# Function: code rc = p6_aws_cfg_vars_filter_secret(val)
#
#  Args:
#	val -
#
#  Returns:
#	code - rc
#
#  Environment:	 P6_FALSE P6_TRUE
#>
######################################################################
p6_aws_cfg_vars_filter_secret() {
	local val="$1"

	local rc=
	case $val in
	session_token | access_key_id | secret_access_key) rc=$P6_FALSE ;;
	*) rc=$P6_TRUE ;;
	esac

	p6_aws_cfg__debug "filter_secret(): [val=$val] -> [rc=$rc]"

	p6_return_code_as_code "$rc"
}
