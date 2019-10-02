######################################################################
#<
#
# Function:
#	p6_aws_sms_replication_job_update(replication_job_id)
#
#  Args:
#	replication_job_id - 
#
#>
######################################################################
p6_aws_sms_replication_job_update() {
    local replication_job_id="$1"
    shift 1

    p6_run_write_cmd aws sms update-replication-job --replication-job-id $replication_job_id "$@"
}