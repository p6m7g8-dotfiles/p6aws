######################################################################
#<
#
# Function:
#	p6_aws_lightsail_static_ip_allocate(static_ip_name)
#
#  Args:
#	static_ip_name - 
#
#>
######################################################################
p6_aws_lightsail_static_ip_allocate() {
    local static_ip_name="$1"
    shift 1

    p6_run_write_cmd aws lightsail allocate-static-ip --static-ip-name $static_ip_name "$@"
}