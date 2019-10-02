######################################################################
#<
#
# Function:
#	p6_aws_opsworks_elastic_load_balancer_attach(elastic_load_balancer_name, layer_id)
#
#  Args:
#	elastic_load_balancer_name - 
#	layer_id - 
#
#>
######################################################################
p6_aws_opsworks_elastic_load_balancer_attach() {
    local elastic_load_balancer_name="$1"
    local layer_id="$2"
    shift 2

    p6_run_write_cmd aws opsworks attach-elastic-load-balancer --elastic-load-balancer-name $elastic_load_balancer_name --layer-id $layer_id "$@"
}