######################################################################
#<
#
# Function:
#	p6_aws_neptune_engine_default_parameters_describe(db_parameter_group_family)
#
#  Args:
#	db_parameter_group_family - 
#
#>
######################################################################
p6_aws_neptune_engine_default_parameters_describe() {
    local db_parameter_group_family="$1"
    shift 1

    p6_run_read_cmd aws neptune describe-engine-default-parameters --db-parameter-group-family $db_parameter_group_family "$@"
}