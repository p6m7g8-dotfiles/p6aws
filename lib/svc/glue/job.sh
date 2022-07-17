# shellcheck shell=bash

######################################################################
#<
#
# Function: p6_aws_svc_glue_job_arn_list()
#
#>
######################################################################
p6_aws_svc_glue_job_arn_list() {

    p6_aws_cli_cmd glue list-jobs --query "JobNames" | grep \" | sed -e 's,",,g' -e 's/,//g'

    p6_return_void
}
