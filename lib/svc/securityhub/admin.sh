# shellcheck shell=bash

######################################################################
#<
#
# Function: p6_aws_svc_securityhub_admin_enable()
#
#>
######################################################################
p6_aws_svc_securityhub_admin_enable() {
    local account_id="$1"

    p6_aws_cli_cmd securityhub enable-organization-admin-account --admin-account-id $account_id || true

    p6_return_void
}
