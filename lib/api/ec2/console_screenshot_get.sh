p6_aws_ec2_console_screenshot_get() {
    local instance_id="$1"
    shift 1

    p6_log_and_run aws ec2 get-console-screenshot --instance-id $instance_id "$@"
}
