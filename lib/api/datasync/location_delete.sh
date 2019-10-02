######################################################################
#<
#
# Function:
#	p6_aws_datasync_location_delete(location_arn)
#
#  Args:
#	location_arn - 
#
#>
######################################################################
p6_aws_datasync_location_delete() {
    local location_arn="$1"
    shift 1

    p6_run_write_cmd aws datasync delete-location --location-arn $location_arn "$@"
}