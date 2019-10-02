######################################################################
#<
#
# Function:
#	p6_aws_apigateway_method_response_update(rest_api_id, resource_id, http_method, status_code)
#
#  Args:
#	rest_api_id - 
#	resource_id - 
#	http_method - 
#	status_code - 
#
#>
######################################################################
p6_aws_apigateway_method_response_update() {
    local rest_api_id="$1"
    local resource_id="$2"
    local http_method="$3"
    local status_code="$4"
    shift 4

    p6_run_write_cmd aws apigateway update-method-response --rest-api-id $rest_api_id --resource-id $resource_id --http-method $http_method --status-code $status_code "$@"
}