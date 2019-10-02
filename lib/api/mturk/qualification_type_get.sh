######################################################################
#<
#
# Function:
#	p6_aws_mturk_qualification_type_get(qualification_type_id)
#
#  Args:
#	qualification_type_id - 
#
#>
######################################################################
p6_aws_mturk_qualification_type_get() {
    local qualification_type_id="$1"
    shift 1

    p6_run_read_cmd aws mturk get-qualification-type --qualification-type-id $qualification_type_id "$@"
}