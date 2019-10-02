######################################################################
#<
#
# Function:
#	p6_aws_iot_thing_describe(thing_name)
#
#  Args:
#	thing_name - 
#
#>
######################################################################
p6_aws_iot_thing_describe() {
    local thing_name="$1"
    shift 1

    p6_run_read_cmd aws iot describe-thing --thing-name $thing_name "$@"
}