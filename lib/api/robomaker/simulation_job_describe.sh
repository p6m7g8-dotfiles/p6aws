######################################################################
#<
#
# Function:
#	p6_aws_robomaker_simulation_job_describe(job)
#
#  Args:
#	job - 
#
#>
######################################################################
p6_aws_robomaker_simulation_job_describe() {
    local job="$1"
    shift 1

    p6_run_read_cmd aws robomaker describe-simulation-job --job $job "$@"
}