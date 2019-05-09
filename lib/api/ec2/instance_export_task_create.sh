p6_aws_ec2_instance_export_task_create() {
    local instance_id="$1"
    shift 1

    p6_log_or_run aws ec2 create-instance-export-task --instance-id $instance_id "$@"
}
