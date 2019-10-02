######################################################################
#<
#
# Function:
#	p6_aws_iam_reset_required(user_name)
#
#  Args:
#	user_name - 
#
#>
######################################################################
p6_aws_iam_reset_required() {
        local user_name="$1"
        shift 1

    cond_log_and_run aws iam update-login-profile --user-name $user_name --password-reset-required "$@"
}