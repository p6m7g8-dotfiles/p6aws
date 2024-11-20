# shellcheck shell=bash

######################################################################
#<
#
# Function: p6_aws_svc_configservice_organization_service_enable()
#
#>
######################################################################
p6_aws_svc_configservice_organization_service_enable() {

    p6_aws_svc_organization_services_enable config.amazonaws.com

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_configservice_admin_delegate_register(account_id)
#
#  Args:
#	account_id -
#
#>
######################################################################
p6_aws_svc_configservice_admin_delegate_register() {
    local account_id="$1"

    p6_aws_svc_organizations_admin_delegate_register "$account_id" "config.amazonaws.com"

    p6_return_void
}
