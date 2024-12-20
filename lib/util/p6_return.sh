######################################################################
#<
#
# Function: str arn = p6_return_aws_arn(arn)
#
#  Args:
#	arn -
#
#  Returns:
#	str - arn
#
#>
######################################################################
p6_return_aws_arn() {
    local arn="$1"

    p6_return_str "$arn"
}

######################################################################
#<
#
# Function: str organization_id = p6_return_aws_organization_id(organization_id)
#
#  Args:
#	organization_id -
#
#  Returns:
#	str - organization_id
#
#>
######################################################################
p6_return_aws_organization_id() {
    local organization_id="$1"

    p6_return_str "$organization_id"
}

######################################################################
#<
#
# Function: str account_id = p6_return_aws_account_id(account_id)
#
#  Args:
#	account_id -
#
#  Returns:
#	str - account_id
#
#>
######################################################################
p6_return_aws_account_id() {
    local account_id="$1"

    p6_return_str "$account_id"
}

######################################################################
#<
#
# Function: str subnet_id = p6_return_aws_subnet_id(subnet_id)
#
#  Args:
#	subnet_id -
#
#  Returns:
#	str - subnet_id
#
#>
######################################################################
p6_return_aws_subnet_id() {
    local subnet_id="$1"

    p6_return_str "$subnet_id"
}

######################################################################
#<
#
# Function: str resource_id = p6_return_aws_resource_id(resource_id)
#
#  Args:
#	resource_id -
#
#  Returns:
#	str - resource_id
#
#>
######################################################################
p6_return_aws_resource_id() {
    local resource_id="$1"

    p6_return_str "$resource_id"
}

######################################################################
#<
#
# Function: str logical_id = p6_return_aws_logical_id(logical_id)
#
#  Args:
#	logical_id -
#
#  Returns:
#	str - logical_id
#
#>
######################################################################
p6_return_aws_logical_id() {
    local logical_id="$1"

    p6_return_str "$logical_id"
}

######################################################################
#<
#
# Function: str profile = p6_return_aws_profile(profile)
#
#  Args:
#	profile -
#
#  Returns:
#	str - profile
#
#>
######################################################################
p6_return_aws_profile() {
    local profile="$1"

    p6_return_str "$profile"
}
