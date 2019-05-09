p6_aws_ec2_security_group_egress_authorize() {
    local group_id="$1"
    shift 1

    p6_log_or_run aws ec2 authorize-security-group-egress --group-id $group_id "$@"
}
