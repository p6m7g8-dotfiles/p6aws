p6_aws_ec2_vpn_connection_route_delete() {
    local destination_cidr_block="$1"
    local vpn_connection_id="$2"
    shift 2

    p6_log_or_run aws ec2 delete-vpn-connection-route --destination-cidr-block $destination_cidr_block --vpn-connection-id $vpn_connection_id "$@"
}
