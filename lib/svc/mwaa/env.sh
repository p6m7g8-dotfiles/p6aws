# shellcheck shell=bash

######################################################################
#<
#
# Function: p6_aws_svc_mwaa_environments_arn_list()
#
#>
######################################################################
p6_aws_svc_mwaa_environments_arn_list() {

    p6_aws_cli_cmd mwaa list-environments --query "Environments" |
        p6_filter_row_select "\"" |
        p6_filter_strip_chars '",'

    p6_return_void
}
