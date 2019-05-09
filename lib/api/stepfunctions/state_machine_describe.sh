p6_aws_stepfunctions_state_machine_describe() {
    local state_machine_arn="$1"
    shift 1

    p6_log_and_run aws stepfunctions describe-state-machine --state-machine-arn $state_machine_arn "$@"
}
