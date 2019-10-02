######################################################################
#<
#
# Function:
#	p6_aws_pinpoint_adm_channel_delete(application_id)
#
#  Args:
#	application_id - 
#
#>
######################################################################
p6_aws_pinpoint_adm_channel_delete() {
    local application_id="$1"
    shift 1

    p6_run_write_cmd aws pinpoint delete-adm-channel --application-id $application_id "$@"
}