p6_aws_ssm_command_invocation_get() {
    local command_id="$1"
    local instance_id="$2"
    shift 2

    p6_log_and_run aws ssm get-command-invocation --command-id $command_id --instance-id $instance_id "$@"
}
