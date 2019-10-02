######################################################################
#<
#
# Function:
#	p6_aws_globalaccelerator_accelerator_create(name, idempotency_token)
#
#  Args:
#	name - 
#	idempotency_token - 
#
#>
######################################################################
p6_aws_globalaccelerator_accelerator_create() {
    local name="$1"
    local idempotency_token="$2"
    shift 2

    p6_run_write_cmd aws globalaccelerator create-accelerator --name $name --idempotency-token $idempotency_token "$@"
}