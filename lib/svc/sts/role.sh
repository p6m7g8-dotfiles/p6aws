######################################################################
#<
#
# Function: p6_aws_svc_sts_role_assume(role_arn, role_session_name)
#
#  Args:
#	role_arn -
#	role_session_name -
#
#>
######################################################################
p6_aws_svc_sts_role_assume() {
    local role_arn="$1"
    local role_session_name="$2"

    local access_key_id
    local secret_access_key
    local session_token
    local expiration
    local output

    # Request the Creds
    output=$(p6_aws_cli_cmd sts assume-role --role-arn "$role_arn" --role-session-name "$role_session_name")

    # Parse
    access_key_id=$(p6_echo "$output" | jq -r ".Credentials.AccessKeyId")
    secret_access_key=$(p6_echo "$output" | jq -r ".Credentials.SecretAccessKey")
    session_token=$(p6_echo "$output" | jq -r ".Credentials.SessionToken")
    expiration=$(p6_echo "$output" | jq -r ".Credentials.Expiration")

    # New Env
    p6_aws_cfg_save_source >/dev/null
    p6_aws_util_env_shared_credentials_file "trexcoe-assumed-0"
    p6_aws_util_env_config_file "trexcoe-assumed-0"

    # Setup
    local conf_file
    local cred_file
    conf_file=$(p6_aws_env_config_file_active)
    cred_file=$(p6_aws_env_shared_credentials_file_active)

    p6_aws_util_env_profile "$role_arn" >/dev/null
    p6_aws_profile_config_add "$conf_file" "$role_arn"
    p6_aws_profile_cred_add "$cred_file" "$role_arn" "$access_key_id" "$secret_access_key" "$session_token" "$expiration"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_sts_role_unassume()
#
#>
######################################################################
p6_aws_svc_sts_role_unassume() {

    p6_aws_cfg_restore_source

    p6_return_void
}