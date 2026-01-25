# shellcheck shell=bash

######################################################################
#<
#
# Function: p6_aws_svc_glue_job_arn_list()
#
#>
######################################################################
p6_aws_svc_glue_job_arn_list() {

    p6_aws_cli_cmd glue list-jobs --query "JobNames" | p6_filter_row_select "\"" | p6_filter_strip_chars '",'

    p6_return_void
}
