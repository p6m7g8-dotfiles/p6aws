######################################################################
#<
#
# Function:
#	p6_aws_secretsmanager_secret_value_put(secret_id)
#
#  Args:
#	secret_id - 
#
#>
######################################################################
p6_aws_secretsmanager_secret_value_put() {
    local secret_id="$1"
    shift 1

    p6_run_write_cmd aws secretsmanager put-secret-value --secret-id $secret_id "$@"
}