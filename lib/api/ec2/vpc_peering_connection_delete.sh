p6_aws_ec2_vpc_peering_connection_delete() {
    local vpc_peering_connection_id="$1"
    shift 1

    p6_log_or_run aws ec2 delete-vpc-peering-connection --vpc-peering-connection-id $vpc_peering_connection_id "$@"
}
