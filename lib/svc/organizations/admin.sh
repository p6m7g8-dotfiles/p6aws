# shellcheck shell=bash
######################################################################
#<
#
# Function: p6_aws_svc_organizations_admin_delegate_register(account_id, service)
#
#  Args:
#	account_id -
#	service -
#
#>
######################################################################
p6_aws_svc_organizations_admin_delegate_register() {
    local account_id="$1"
    local service="$2"

    p6_aws_cli_cmd organizations register-delegated-administrator --account-id "$audit_account_id" --service-principal "$service" || true

    p6_return_void
}
