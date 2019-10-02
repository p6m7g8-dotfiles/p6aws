######################################################################
#<
#
# Function:
#	p6_aws_robomaker_describe_simulation_job_batch(jobs)
#
#  Args:
#	jobs - 
#
#>
######################################################################
p6_aws_robomaker_describe_simulation_job_batch() {
    local jobs="$1"
    shift 1

    p6_run_read_cmd aws robomaker batch-describe-simulation-job --jobs $jobs "$@"
}