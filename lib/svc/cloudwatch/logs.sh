# shellcheck shell=sh
######################################################################
#<
#
# Function: p6_aws_svc_logs_watch(log_group_name)
#
#  Args:
#	log_group_name -
#
#>
######################################################################
p6_aws_svc_logs_watch() {
    local log_group_name="$1"

    awslogs get "$log_group_name" ALL --watch
}

######################################################################
#<
#
# Function: p6_aws_svc_logs_groups_list()
#
#>
######################################################################
p6_aws_svc_logs_groups_list() {

    p6_aws_cli_cmd logs describe-log-groups --query "'logGroups[].[creationTime,logGroupName]'" --output text |sort -n -k 1,1
}
