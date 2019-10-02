######################################################################
#<
#
# Function:
#	p6_aws_apigateway_documentation_part_delete(rest_api_id, documentation_part_id)
#
#  Args:
#	rest_api_id - 
#	documentation_part_id - 
#
#>
######################################################################
p6_aws_apigateway_documentation_part_delete() {
    local rest_api_id="$1"
    local documentation_part_id="$2"
    shift 2

    p6_run_write_cmd aws apigateway delete-documentation-part --rest-api-id $rest_api_id --documentation-part-id $documentation_part_id "$@"
}