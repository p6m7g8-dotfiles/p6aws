p6_aws_ssm_command_invocations_list() {

    p6_log_and_run aws ssm list-command-invocations "$@"
}
