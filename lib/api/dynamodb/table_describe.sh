######################################################################
#<
#
# Function:
#	p6_aws_dynamodb_table_describe(table_name)
#
#  Args:
#	table_name - 
#
#>
######################################################################
p6_aws_dynamodb_table_describe() {
    local table_name="$1"
    shift 1

    p6_run_read_cmd aws dynamodb describe-table --table-name $table_name "$@"
}