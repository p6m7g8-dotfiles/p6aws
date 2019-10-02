######################################################################
#<
#
# Function:
#	p6_aws_transfer_user_create(role, server_id, user_name)
#
#  Args:
#	role - 
#	server_id - 
#	user_name - 
#
#>
######################################################################
p6_aws_transfer_user_create() {
    local role="$1"
    local server_id="$2"
    local user_name="$3"
    shift 3

    p6_run_write_cmd aws transfer create-user --role $role --server-id $server_id --user-name $user_name "$@"
}