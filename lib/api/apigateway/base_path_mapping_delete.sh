######################################################################
#<
#
# Function:
#	p6_aws_apigateway_base_path_mapping_delete(domain_name, base_path)
#
#  Args:
#	domain_name - 
#	base_path - 
#
#>
######################################################################
p6_aws_apigateway_base_path_mapping_delete() {
    local domain_name="$1"
    local base_path="$2"
    shift 2

    p6_run_write_cmd aws apigateway delete-base-path-mapping --domain-name $domain_name --base-path $base_path "$@"
}