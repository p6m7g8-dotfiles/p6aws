######################################################################
#<
#
# Function:
#	p6_aws_amplify_notification(app_id, branch_name)
#
#  Args:
#	app_id - 
#	branch_name - 
#
#>
######################################################################
p6_aws_amplify_notification() {
        local app_id="$1"
        local branch_name="$2"
        shift 2

    cond_log_and_run aws amplify update-branch --app-id $app_id --branch-name $branch_name --enable-notification "$@"
}

######################################################################
#<
#
# Function:
#	p6_aws_amplify_auto_build(app_id, branch_name)
#
#  Args:
#	app_id - 
#	branch_name - 
#
#>
######################################################################
p6_aws_amplify_auto_build() {
        local app_id="$1"
        local branch_name="$2"
        shift 2

    cond_log_and_run aws amplify update-branch --app-id $app_id --branch-name $branch_name --enable-auto-build "$@"
}

######################################################################
#<
#
# Function:
#	p6_aws_amplify_basic_auth(app_id, app_id, branch_name)
#
#  Args:
#	app_id - 
#	app_id - 
#	branch_name - 
#
#>
######################################################################
p6_aws_amplify_basic_auth() {
        local app_id="$1"
        local branch_name="$2"
        shift 2

    cond_log_and_run aws amplify update-branch --app-id $app_id --branch-name $branch_name --enable-basic-auth "$@"
}