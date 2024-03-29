######################################################################
#<
#
# Function: str old = p6_aws_env_ca_bundle_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_CA_BUNDLE_
#>
######################################################################
p6_aws_env_ca_bundle_saved() {
    local val="${1:-}"

    local old="${AWS_CA_BUNDLE_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_CA_BUNDLE_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_metadata_service_timeout_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_METADATA_SERVICE_TIMEOUT_
#>
######################################################################
p6_aws_env_metadata_service_timeout_saved() {
    local val="${1:-}"

    local old="${AWS_METADATA_SERVICE_TIMEOUT_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_METADATA_SERVICE_TIMEOUT_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_metadata_service_num_attempts_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_METADATA_SERVICE_NUM_ATTEMPTS_
#>
######################################################################
p6_aws_env_metadata_service_num_attempts_saved() {
    local val="${1:-}"

    local old="${AWS_METADATA_SERVICE_NUM_ATTEMPTS_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_METADATA_SERVICE_NUM_ATTEMPTS_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_output_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_OUTPUT_
#>
######################################################################
p6_aws_env_output_saved() {
    local val="${1:-}"

    local old="${AWS_OUTPUT_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_OUTPUT_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_org_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_ORG_
#>
######################################################################
p6_aws_env_org_saved() {
    local val="${1:-}"

    local old="${AWS_ORG_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_ORG_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_default_profile_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_DEFAULT_PROFILE_
#>
######################################################################
p6_aws_env_default_profile_saved() {
    local val="${1:-}"

    local old="${AWS_DEFAULT_PROFILE_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_DEFAULT_PROFILE_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_default_region_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_DEFAULT_REGION_
#>
######################################################################
p6_aws_env_default_region_saved() {
    local val="${1:-}"

    local old="${AWS_DEFAULT_REGION_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_DEFAULT_REGION_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_default_sso_start_url_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_DEFAULT_SSO_START_URL_
#>
######################################################################
p6_aws_env_default_sso_start_url_saved() {
    local val="${1:-}"

    local old="${AWS_DEFAULT_SSO_START_URL_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_DEFAULT_SSO_START_URL_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_default_sso_region_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_DEFAULT_SSO_REGION_
#>
######################################################################
p6_aws_env_default_sso_region_saved() {
    local val="${1:-}"

    local old="${AWS_DEFAULT_SSO_REGION_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_DEFAULT_SSO_REGION_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_sso_start_url_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_SSO_START_URL_
#>
######################################################################
p6_aws_env_sso_start_url_saved() {
    local val="${1:-}"

    local old="${AWS_SSO_START_URL_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_SSO_START_URL_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_sso_region_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_SSO_REGION_
#>
######################################################################
p6_aws_env_sso_region_saved() {
    local val="${1:-}"

    local old="${AWS_SSO_REGION_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_SSO_REGION_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_sso_account_name_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_SSO_ACCOUNT_NAME_
#>
######################################################################
p6_aws_env_sso_account_name_saved() {
    local val="${1:-}"

    local old="${AWS_SSO_ACCOUNT_NAME_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_SSO_ACCOUNT_NAME_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_sso_account_id_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_SSO_ACCOUNT_ID_
#>
######################################################################
p6_aws_env_sso_account_id_saved() {
    local val="${1:-}"

    local old="${AWS_SSO_ACCOUNT_ID_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_SSO_ACCOUNT_ID_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_sso_role_name_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_SSO_ROLE_NAME_
#>
######################################################################
p6_aws_env_sso_role_name_saved() {
    local val="${1:-}"

    local old="${AWS_SSO_ROLE_NAME_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_SSO_ROLE_NAME_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_login_default_sso_region_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_LOGIN_DEFAULT_SSO_REGION_
#>
######################################################################
p6_aws_env_login_default_sso_region_saved() {
    local val="${1:-}"

    local old="${AWS_LOGIN_DEFAULT_SSO_REGION_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_LOGIN_DEFAULT_SSO_REGION_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_vpc_id_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_VPC_ID_
#>
######################################################################
p6_aws_env_vpc_id_saved() {
    local val="${1:-}"

    local old="${AWS_VPC_ID_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_VPC_ID_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_eks_cluster_name_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_EKS_CLUSTER_NAME_
#>
######################################################################
p6_aws_env_eks_cluster_name_saved() {
    local val="${1:-}"

    local old="${AWS_EKS_CLUSTER_NAME_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_EKS_CLUSTER_NAME_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_codebuild_project_name_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_CODEBUILD_PROJECT_NAME_
#>
######################################################################
p6_aws_env_codebuild_project_name_saved() {
    local val="${1:-}"

    local old="${AWS_CODEBUILD_PROJECT_NAME_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_CODEBUILD_PROJECT_NAME_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_env_tag_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_ENV_TAG_
#>
######################################################################
p6_aws_env_env_tag_saved() {
    local val="${1:-}"

    local old="${AWS_ENV_TAG_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_ENV_TAG_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_env_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_ENV_
#>
######################################################################
p6_aws_env_env_saved() {
    local val="${1:-}"

    local old="${AWS_ENV_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_ENV_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_profile_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_PROFILE_
#>
######################################################################
p6_aws_env_profile_saved() {
    local val="${1:-}"

    local old="${AWS_PROFILE_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_PROFILE_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_config_file_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_CONFIG_FILE_
#>
######################################################################
p6_aws_env_config_file_saved() {
    local val="${1:-}"

    local old="${AWS_CONFIG_FILE_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_CONFIG_FILE_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_shared_credentials_file_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_SHARED_CREDENTIALS_FILE_
#>
######################################################################
p6_aws_env_shared_credentials_file_saved() {
    local val="${1:-}"

    local old="${AWS_SHARED_CREDENTIALS_FILE_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_SHARED_CREDENTIALS_FILE_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_session_token_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_SESSION_TOKEN_
#>
######################################################################
p6_aws_env_session_token_saved() {
    local val="${1:-}"

    local old="${AWS_SESSION_TOKEN_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_SESSION_TOKEN_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_access_key_id_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_ACCESS_KEY_ID_
#>
######################################################################
p6_aws_env_access_key_id_saved() {
    local val="${1:-}"

    local old="${AWS_ACCESS_KEY_ID_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_ACCESS_KEY_ID_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_secret_access_key_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_SECRET_ACCESS_KEY_
#>
######################################################################
p6_aws_env_secret_access_key_saved() {
    local val="${1:-}"

    local old="${AWS_SECRET_ACCESS_KEY_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_SECRET_ACCESS_KEY_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_region_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#  Environment:	 AWS_REGION_
#>
######################################################################
p6_aws_env_region_saved() {
    local val="${1:-}"

    local old="${AWS_REGION_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_REGION_saved" "$val"
    fi

    p6_return_str "$old"
}
