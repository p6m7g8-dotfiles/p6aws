# shellcheck shell=bash

######################################################################
#<
#
# Function: p6_aws_svc_organizations_id_get()
#
#>
######################################################################
p6_aws_svc_organizations_id_get() {

  local organization_id=$(p6_aws_cli_cmd organizations describe-organization --query "Organization.Id" --output text)

  p6_return_organization_id "$organization_id"
}
