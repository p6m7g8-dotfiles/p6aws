# shellcheck shell=bash
######################################################################
#<
#
# Function: p6_aws_svc_inspector_organization_service_enable()
#
#>
######################################################################
p6_aws_svc_inspector_organization_service_enable() {

    p6_aws_svc_organization_services_enable inspector2.amazonaws.com

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_inspector_admin_delegate_register(da_account_id)
#
#  Args:
#	da_account_id -
#
#>
######################################################################
p6_aws_svc_inspector_admin_delegate_register() {
    local da_account_id="$1"

    p6_aws_svc_organizations_admin_delegate_register "$da_account_id" "inspector2.amazonaws.com"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_inspector_admin_delegated_enable(da_account_id)
#
#  Args:
#	da_account_id -
#
#>
######################################################################
p6_aws_svc_inspector_admin_delegated_enable() {
    local da_account_id="$1"

    p6_aws_cli_cmd inspector2 enable-delegated-admin-account --delegated-admin-account-id "$da_account_id"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_inspector_role_service_linked_create()
#
#>
######################################################################
p6_aws_svc_inspector_role_service_linked_create() {

    p6_aws_svc_iam_role_service_linked_created "inspector2.amazonaws.com"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_inspector_member_associate(account_id)
#
#  Args:
#	account_id -
#
#>
######################################################################
p6_aws_svc_inspector_member_associate() {
    local account_id="$1"

    p6_aws_cli_cmd inspector2 associate-member --account-id "$account_id"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_inspector_resource_scanning_enable(account_id)
#
#  Args:
#	account_id -
#
#  Environment:	 EC2 ECR LAMBDA LAMBDA_CODE
#>
######################################################################
p6_aws_svc_inspector_resource_scanning_enable() {
    local account_id="$1"

    p6_aws_cli_cmd inspector2 enable --resource-types "EC2" --account-ids "$account_id"
    p6_aws_cli_cmd inspector2 enable --resource-types "ECR" --account-ids "$account_id"
    p6_aws_cli_cmd inspector2 enable --resource-types "LAMBDA" --account-ids "$account_id"
    p6_aws_cli_cmd inspector2 enable --resource-types "LAMBDA_CODE" --account-ids "$account_id"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_inspector_status_batch_get(account_id)
#
#  Args:
#	account_id -
#
#>
######################################################################
p6_aws_svc_inspector_status_batch_get() {
    local account_id="$1"

    p6_aws_cli_cmd inspector2 batch-get-account-status --account-ids "$account_id"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_inspector_organization_members_enable()
#
#>
######################################################################
p6_aws_svc_inspector_organization_members_enable() {

    local account_ids=$(p6_aws_svc_organizations_accounts_list_active | awk '{print $1}')
    local account_id
    for account_id in $account_ids; do
        p6_aws_svc_inspector_member_associate "$account_id"
        p6_aws_svc_inspector_resource_scanning_enable "$account_id"
    done

    p6_return_void
}
