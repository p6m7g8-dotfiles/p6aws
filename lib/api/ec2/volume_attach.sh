p6_aws_ec2_volume_attach() {
    local device="$1"
    local instance_id="$2"
    local volume_id="$3"
    shift 3

    p6_log_or_run aws ec2 attach-volume --device $device --instance-id $instance_id --volume-id $volume_id "$@"
}
