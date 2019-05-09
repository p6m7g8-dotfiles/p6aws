p6_aws_ec2_hosts_release() {
    local host_ids="$1"
    shift 1

    p6_log_or_run aws ec2 release-hosts --host-ids $host_ids "$@"
}
