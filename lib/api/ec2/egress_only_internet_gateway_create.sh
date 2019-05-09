p6_aws_ec2_egress_only_internet_gateway_create() {
    local vpc_id="$1"
    shift 1

    p6_log_or_run aws ec2 create-egress-only-internet-gateway --vpc-id $vpc_id "$@"
}
