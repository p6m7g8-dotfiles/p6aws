######################################################################
#<
#
# Function:
#	p6_aws_iot_dynamic_groups()
#
#>
######################################################################
p6_aws_iot_dynamic_groups() {
    
    cond_log_and_run aws iot update-thing-groups-for-thing --override-dynamic-groups "$@"
}