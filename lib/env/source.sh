######################################################################
#<
#
# Function: str old = p6_aws_env_ca_bundle_source([val=])
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
p6_aws_env_ca_bundle_source() {
    local val="${1:-}"

    local old="${AWS_CA_BUNDLE_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_CA_BUNDLE_source" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_metadata_service_timeout_source([val=])
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
p6_aws_env_metadata_service_timeout_source() {
    local val="${1:-}"

    local old="${AWS_METADATA_SERVICE_TIMEOUT_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_METADATA_SERVICE_TIMEOUT_source" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_metadata_service_num_attempts_source([val=])
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
p6_aws_env_metadata_service_num_attempts_source() {
    local val="${1:-}"

    local old="${AWS_METADATA_SERVICE_NUM_ATTEMPTS_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_METADATA_SERVICE_NUM_ATTEMPTS_source" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_output_source([val=])
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
p6_aws_env_output_source() {
    local val="${1:-}"

    local old="${AWS_OUTPUT_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_OUTPUT_source" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_org_source([val=])
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
p6_aws_env_org_source() {
    local val="${1:-}"

    local old="${AWS_ORG_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_ORG_source" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_default_profile_source([val=])
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
p6_aws_env_default_profile_source() {
    local val="${1:-}"

    local old="${AWS_DEFAULT_PROFILE_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_DEFAULT_PROFILE_source" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_default_region_source([val=])
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
p6_aws_env_default_region_source() {
    local val="${1:-}"

    local old="${AWS_DEFAULT_REGION_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_DEFAULT_REGION_source" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_vpc_id_source([val=])
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
p6_aws_env_vpc_id_source() {
    local val="${1:-}"

    local old="${AWS_VPC_ID_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_VPC_ID_source" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_env_tag_source([val=])
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
p6_aws_env_env_tag_source() {
    local val="${1:-}"

    local old="${AWS_ENV_TAG_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_ENV_TAG_source" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_env_source([val=])
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
p6_aws_env_env_source() {
    local val="${1:-}"

    local old="${AWS_ENV_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_ENV_source" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_profile_source([val=])
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
p6_aws_env_profile_source() {
    local val="${1:-}"

    local old="${AWS_PROFILE_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_PROFILE_source" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_config_file_source([val=])
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
p6_aws_env_config_file_source() {
    local val="${1:-}"

    local old="${AWS_CONFIG_FILE_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_CONFIG_FILE_source" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_shared_credentials_file_source([val=])
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
p6_aws_env_shared_credentials_file_source() {
    local val="${1:-}"

    local old="${AWS_SHARED_CREDENTIALS_FILE_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_SHARED_CREDENTIALS_FILE_source" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_session_token_source([val=])
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
p6_aws_env_session_token_source() {
    local val="${1:-}"

    local old="${AWS_SESSION_TOKEN_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_SESSION_TOKEN_source" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_access_key_id_source([val=])
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
p6_aws_env_access_key_id_source() {
    local val="${1:-}"

    local old="${AWS_ACCESS_KEY_ID_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_ACCESS_KEY_ID_source" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_secret_access_key_source([val=])
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
p6_aws_env_secret_access_key_source() {
    local val="${1:-}"

    local old="${AWS_SECRET_ACCESS_KEY_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_SECRET_ACCESS_KEY_source" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_region_source([val=])
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
p6_aws_env_region_source() {
    local val="${1:-}"

    local old="${AWS_REGION_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_REGION_source" "$val"
    fi

    p6_return_str "$old"
}
