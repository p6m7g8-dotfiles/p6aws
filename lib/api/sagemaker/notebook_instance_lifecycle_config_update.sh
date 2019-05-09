p6_aws_sagemaker_notebook_instance_lifecycle_config_update() {
    local notebook_instance_lifecycle_config_name="$1"
    shift 1

    p6_log_or_run aws sagemaker update-notebook-instance-lifecycle-config --notebook-instance-lifecycle-config-name $notebook_instance_lifecycle_config_name "$@"
}
