p6_aws_ec2_hosts_modify() {
    local auto_placement="$1"
    local host_ids="$2"
    shift 2

    p6_log_or_run aws ec2 modify-hosts --auto-placement $auto_placement --host-ids $host_ids "$@"
}
