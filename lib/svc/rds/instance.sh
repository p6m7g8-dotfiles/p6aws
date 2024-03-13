# shellcheck shell=bash

######################################################################
#<
#
# Function: p6_aws_svc_rds_instance_arns_list()
#
#  Environment:	 DBI
#>
######################################################################
p6_aws_svc_rds_instance_arns_list() {

    p6_aws_cli_cmd rds describe-db-instances --query "DBInstances[].[DBInstanceArn]" --output text

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_rds_pgpassword_from_iam_get(host, username, port)
#
#  Args:
#	host -
#	username -
#	port -
#
#>
######################################################################
p6_aws_svc_rds_pgpassword_from_iam_get() {
    local host="$1"
    local username="$2"
    local port="$3"

    p6_aws_cli_cmd rds generate-db-auth-token --hostname "$host" --port "$port"
}
