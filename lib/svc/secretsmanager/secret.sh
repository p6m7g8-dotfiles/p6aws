######################################################################
#<
#
# Function: p6_aws_svc_secretsmanager_list()
#
#  Environment:	 ARN
#>
######################################################################
p6_aws_svc_secretsmanager_list() {

	p6_aws_cli_cmd secretsmanager \
		list-secrets \
		--output text \
		--query "'SecretList[].[Name, ARN, LastChangedDate, LastAccessedDate]'"

}

######################################################################
#<
#
# Function: p6_aws_svc_secretsmanager_secret_get(name)
#
#  Args:
#	name -
#
#>
######################################################################
p6_aws_svc_secretsmanager_secret_get() {
	local name="$1"
		
	p6_aws_cli_cmd secretsmanager \
		get-secret-value \
		--secret-id "$name" \
		--query SecretString \
		--output text
}
