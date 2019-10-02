######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_get_user_admin(user_pool_id, username)
#
#  Args:
#	user_pool_id - 
#	username - 
#
#>
######################################################################
p6_aws_cognito_idp_get_user_admin() {
    local user_pool_id="$1"
    local username="$2"
    shift 2

    p6_run_read_cmd aws cognito-idp admin-get-user --user-pool-id $user_pool_id --username $username "$@"
}