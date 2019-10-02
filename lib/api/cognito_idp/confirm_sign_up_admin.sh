######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_confirm_sign_up_admin(user_pool_id, username)
#
#  Args:
#	user_pool_id - 
#	username - 
#
#>
######################################################################
p6_aws_cognito_idp_confirm_sign_up_admin() {
    local user_pool_id="$1"
    local username="$2"
    shift 2

    p6_run_write_cmd aws cognito-idp admin-confirm-sign-up --user-pool-id $user_pool_id --username $username "$@"
}