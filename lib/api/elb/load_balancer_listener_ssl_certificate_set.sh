######################################################################
#<
#
# Function:
#	p6_aws_elb_load_balancer_listener_ssl_certificate_set(load_balancer_name, load_balancer_port, ssl_certificate_id)
#
#  Args:
#	load_balancer_name - 
#	load_balancer_port - 
#	ssl_certificate_id - 
#
#>
######################################################################
p6_aws_elb_load_balancer_listener_ssl_certificate_set() {
    local load_balancer_name="$1"
    local load_balancer_port="$2"
    local ssl_certificate_id="$3"
    shift 3

    p6_run_read_cmd aws elb set-load-balancer-listener-ssl-certificate --load-balancer-name $load_balancer_name --load-balancer-port $load_balancer_port --ssl-certificate-id $ssl_certificate_id "$@"
}