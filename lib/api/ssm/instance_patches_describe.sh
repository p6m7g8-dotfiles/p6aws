p6_aws_ssm_instance_patches_describe() {
    local instance_id="$1"
    shift 1

    p6_log_and_run aws ssm describe-instance-patches --instance-id $instance_id "$@"
}
