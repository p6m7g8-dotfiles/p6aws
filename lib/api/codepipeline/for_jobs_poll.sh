######################################################################
#<
#
# Function:
#	p6_aws_codepipeline_for_jobs_poll(action_type_id)
#
#  Args:
#	action_type_id - 
#
#>
######################################################################
p6_aws_codepipeline_for_jobs_poll() {
    local action_type_id="$1"
    shift 1

    p6_run_write_cmd aws codepipeline poll-for-jobs --action-type-id $action_type_id "$@"
}