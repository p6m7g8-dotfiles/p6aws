######################################################################
#<
#
# Function:
#	p6_aws_rds_orderable_db_instance_options_describe(engine)
#
#  Args:
#	engine - 
#
#>
######################################################################
p6_aws_rds_orderable_db_instance_options_describe() {
    local engine="$1"
    shift 1

    p6_run_read_cmd aws rds describe-orderable-db-instance-options --engine $engine "$@"
}