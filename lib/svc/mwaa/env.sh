# shellcheck shell=bash

p6_aws_svc_mwaa_environments_arn_list() {

    p6_aws_cli_cmd mwaa list-environments --query "Environments" |
        grep \" |
        sed -e 's/,//g' -e s',",,g'

    p6_return_void
}
