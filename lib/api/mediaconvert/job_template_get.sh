######################################################################
#<
#
# Function:
#	p6_aws_mediaconvert_job_template_get(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_mediaconvert_job_template_get() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws mediaconvert get-job-template --name $name "$@"
}