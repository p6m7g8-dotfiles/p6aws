######################################################################
#<
#
# Function:
#	p6_aws_iot_thing_type(thing_name)
#
#  Args:
#	thing_name - 
#
#>
######################################################################
p6_aws_iot_thing_type() {
        local thing_name="$1"
        shift 1

    cond_log_and_run aws iot update-thing --thing-name $thing_name --remove-thing-type "$@"
}