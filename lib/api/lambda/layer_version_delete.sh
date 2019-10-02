######################################################################
#<
#
# Function:
#	p6_aws_lambda_layer_version_delete(layer_name, version_number)
#
#  Args:
#	layer_name - 
#	version_number - 
#
#>
######################################################################
p6_aws_lambda_layer_version_delete() {
    local layer_name="$1"
    local version_number="$2"
    shift 2

    p6_run_write_cmd aws lambda delete-layer-version --layer-name $layer_name --version-number $version_number "$@"
}