p6_aws_ec2_vpn_gateway_detach() {
    local vpc_id="$1"
    local vpn_gateway_id="$2"
    shift 2

    p6_log_or_run aws ec2 detach-vpn-gateway --vpc-id $vpc_id --vpn-gateway-id $vpn_gateway_id "$@"
}
