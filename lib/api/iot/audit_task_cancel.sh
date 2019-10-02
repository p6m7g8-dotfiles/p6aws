######################################################################
#<
#
# Function:
#	p6_aws_iot_audit_task_cancel(task_id)
#
#  Args:
#	task_id - 
#
#>
######################################################################
p6_aws_iot_audit_task_cancel() {
    local task_id="$1"
    shift 1

    p6_run_write_cmd aws iot cancel-audit-task --task-id $task_id "$@"
}