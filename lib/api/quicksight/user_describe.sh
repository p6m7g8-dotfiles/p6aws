######################################################################
#<
#
# Function:
#	p6_aws_quicksight_user_describe(user_name, aws_account_id, namespace)
#
#  Args:
#	user_name - 
#	aws_account_id - 
#	namespace - 
#
#>
######################################################################
p6_aws_quicksight_user_describe() {
    local user_name="$1"
    local aws_account_id="$2"
    local namespace="$3"
    shift 3

    p6_run_read_cmd aws quicksight describe-user --user-name $user_name --aws-account-id $aws_account_id --namespace $namespace "$@"
}