######################################################################
#<
#
# Function: p6_aws_svc_iam_role_policies(role_name)
#
#  Args:
#	role_name -
#
#>
######################################################################
p6_aws_svc_iam_role_policies() {
	local role_name="$1"

	p6_aws_cli_cmd iam list-attached-role-policies \
		--output text \
		--role-name "$role_name" \
		--query "'AttachedPolicies[].[PolicyName]'"
}

######################################################################
#<
#
# Function: stream  = p6_aws_svc_iam_roles_list()
#
#  Returns:
#	stream - 
#
#>
######################################################################
p6_aws_svc_iam_roles_list() {

	p6_aws_cli_cmd iam list-roles \
		--output text \
		--query "'Roles[].[RoleId,RoleName,Arn]'"

	p6_return_stream
}

######################################################################
#<
#
# Function: p6_aws_svc_iam_role_service_linked_create(service)
#
#  Args:
#	service -
#
#>
######################################################################
p6_aws_svc_iam_role_service_linked_create() {
	local service="$1"

	p6_aws_cli_cmd iam create-service-linked-role --aws-service-name "$service" || true

	p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_iam_role_service_linked_delete(service)
#
#  Args:
#	service -
#
#>
######################################################################
p6_aws_svc_iam_role_service_linked_delete() {
	local service="$1"

	p6_aws_cli_cmd iam delete-service-linked-role --role-name "$service" || true

	p6_return_void
}
