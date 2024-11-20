# shellcheck shell=bash

######################################################################
#<
#
# Function: p6_aws_svc_configservice_aggregation_authorization_put()
#
#>
######################################################################
p6_aws_svc_configservice_aggregation_authorization_put() {
    local account_id="$1"
    local region="$2"

    p6_aws_cli_cmd configservice put-aggregation-authorization --authorized-account-id "$account_id" --authorized-aws-region "$region"

    p6_return_void
}
