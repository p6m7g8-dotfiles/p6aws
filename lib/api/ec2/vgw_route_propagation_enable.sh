p6_aws_ec2_vgw_route_propagation_enable() {
    local gateway_id="$1"
    local route_table_id="$2"
    shift 2

    p6_log_or_run aws ec2 enable-vgw-route-propagation --gateway-id $gateway_id --route-table-id $route_table_id "$@"
}
