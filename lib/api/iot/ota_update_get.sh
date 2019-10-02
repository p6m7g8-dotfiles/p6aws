######################################################################
#<
#
# Function:
#	p6_aws_iot_ota_update_get(ota_update_id)
#
#  Args:
#	ota_update_id - 
#
#>
######################################################################
p6_aws_iot_ota_update_get() {
    local ota_update_id="$1"
    shift 1

    p6_run_read_cmd aws iot get-ota-update --ota-update-id $ota_update_id "$@"
}