# shellcheck shell=bash

######################################################################
#<
#
# Function: p6_aws_svc_cloudtrail_admin_delegate_register()
#
#>
######################################################################
p6_aws_svc_cloudtrail_admin_delegate_register() {
    local account_id="$1"

    p6_aws_cli_cmd cloudtrail register-organization-delegated-admin --member-account-id "$account_id" || true

    p6_return_void
}
