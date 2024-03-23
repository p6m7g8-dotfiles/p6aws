# shellcheck shell=bash
######################################################################
#<
#
# Function: p6_aws_cli_organization_on(org)
#
#  Args:
#	org -
#
#>
######################################################################
p6_aws_cli_organization_on() {
	local org="$1"

	p6_aws_cfg_reset
	p6_aws_env_org_active "$org"
	p6_aws_cli_shortcuts_on "$org" >/dev/null

	p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_cli_organization_off(org)
#
#  Args:
#	org -
#
#>
######################################################################
p6_aws_cli_organization_off() {
	local org="$1"

	p6_aws_cli_shortcuts_off "$org"
	p6_aws_cfg_reset
	p6_aws_env_org_active ""

	p6_return_void
}
