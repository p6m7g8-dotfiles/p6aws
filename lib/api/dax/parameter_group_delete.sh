######################################################################
#<
#
# Function:
#	p6_aws_dax_parameter_group_delete(parameter_group_name)
#
#  Args:
#	parameter_group_name - 
#
#>
######################################################################
p6_aws_dax_parameter_group_delete() {
    local parameter_group_name="$1"
    shift 1

    p6_run_write_cmd aws dax delete-parameter-group --parameter-group-name $parameter_group_name "$@"
}