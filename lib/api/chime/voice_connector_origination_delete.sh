######################################################################
#<
#
# Function:
#	p6_aws_chime_voice_connector_origination_delete(voice_connector_id)
#
#  Args:
#	voice_connector_id - 
#
#>
######################################################################
p6_aws_chime_voice_connector_origination_delete() {
    local voice_connector_id="$1"
    shift 1

    p6_run_write_cmd aws chime delete-voice-connector-origination --voice-connector-id $voice_connector_id "$@"
}