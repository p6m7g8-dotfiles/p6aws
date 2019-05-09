p6_aws_ec2_fleet_create() {
    local launch_template_configs="$1"
    local target_capacity_specification="$2"
    shift 2

    p6_log_or_run aws ec2 create-fleet --launch-template-configs $launch_template_configs --target-capacity-specification $target_capacity_specification "$@"
}
