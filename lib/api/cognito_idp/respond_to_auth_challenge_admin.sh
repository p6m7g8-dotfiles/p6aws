######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_respond_to_auth_challenge_admin(user_pool_id, client_id, challenge_name)
#
#  Args:
#	user_pool_id - 
#	client_id - 
#	challenge_name - 
#
#>
######################################################################
p6_aws_cognito_idp_respond_to_auth_challenge_admin() {
    local user_pool_id="$1"
    local client_id="$2"
    local challenge_name="$3"
    shift 3

    p6_run_write_cmd aws cognito-idp admin-respond-to-auth-challenge --user-pool-id $user_pool_id --client-id $client_id --challenge-name $challenge_name "$@"
}