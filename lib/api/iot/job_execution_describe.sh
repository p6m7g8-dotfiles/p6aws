######################################################################
#<
#
# Function:
#	p6_aws_iot_job_execution_describe(job_id, thing_name)
#
#  Args:
#	job_id - 
#	thing_name - 
#
#>
######################################################################
p6_aws_iot_job_execution_describe() {
    local job_id="$1"
    local thing_name="$2"
    shift 2

    p6_run_read_cmd aws iot describe-job-execution --job-id $job_id --thing-name $thing_name "$@"
}