######################################################################
#<
#
# Function:
#	p6_aws_apigatewayv2_route_response_delete(api_id, route_id, route_response_id)
#
#  Args:
#	api_id - 
#	route_id - 
#	route_response_id - 
#
#>
######################################################################
p6_aws_apigatewayv2_route_response_delete() {
    local api_id="$1"
    local route_id="$2"
    local route_response_id="$3"
    shift 3

    p6_run_write_cmd aws apigatewayv2 delete-route-response --api-id $api_id --route-id $route_id --route-response-id $route_response_id "$@"
}