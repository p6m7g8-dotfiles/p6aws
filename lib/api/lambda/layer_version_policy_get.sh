######################################################################
#<
#
# Function:
#	p6_aws_lambda_layer_version_policy_get(layer_name, version_number)
#
#  Args:
#	layer_name - 
#	version_number - 
#
#>
######################################################################
p6_aws_lambda_layer_version_policy_get() {
    local layer_name="$1"
    local version_number="$2"
    shift 2

    p6_run_read_cmd aws lambda get-layer-version-policy --layer-name $layer_name --version-number $version_number "$@"
}