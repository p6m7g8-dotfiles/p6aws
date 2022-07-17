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
