######################################################################
#<
#
# Function:
#	p6_aws_cognito_sync_datasets_list(identity_pool_id, identity_id)
#
#  Args:
#	identity_pool_id - 
#	identity_id - 
#
#>
######################################################################
p6_aws_cognito_sync_datasets_list() {
    local identity_pool_id="$1"
    local identity_id="$2"
    shift 2

    p6_run_read_cmd aws cognito-sync list-datasets --identity-pool-id $identity_pool_id --identity-id $identity_id "$@"
}