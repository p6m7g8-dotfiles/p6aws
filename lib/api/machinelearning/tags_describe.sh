######################################################################
#<
#
# Function:
#	p6_aws_machinelearning_tags_describe(resource_id, resource_type)
#
#  Args:
#	resource_id - 
#	resource_type - 
#
#>
######################################################################
p6_aws_machinelearning_tags_describe() {
    local resource_id="$1"
    local resource_type="$2"
    shift 2

    p6_run_read_cmd aws machinelearning describe-tags --resource-id $resource_id --resource-type $resource_type "$@"
}