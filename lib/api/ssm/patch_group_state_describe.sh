p6_aws_ssm_patch_group_state_describe() {
    local patch_group="$1"
    shift 1

    p6_log_and_run aws ssm describe-patch-group-state --patch-group $patch_group "$@"
}
