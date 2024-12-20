######################################################################
#<
#
# Function: p6_aws_svc_dynamodb_tables_list()
#
#>
######################################################################
p6_aws_svc_dynamodb_tables_list() {

  p6_aws_cli_cmd dynamodb list-tables \
    --query "'TableNames[]'" | \
    jq -r ".[]"
}

######################################################################
#<
#
# Function: p6_aws_svc_dynamodb_table_describe(table_name)
#
#  Args:
#	table_name -
#
#>
######################################################################
p6_aws_svc_dynamodb_table_describe() {
  local table_name="$1"

  p6_aws_cli_cmd dynamodb describe-table \
    --table-name "$table_name" \
    --query "'Table.AttributeDefinitions[].[AttributeType, AttributeName]'" \
    --output text
}

######################################################################
#<
#
# Function: p6_aws_svc_dynamodb_table_all(table_name)
#
#  Args:
#	table_name -
#
#>
######################################################################
p6_aws_svc_dynamodb_table_all() {
  local table_name="$1"

  p6_aws_cli_cmd dynamodb scan \
    --table-name "$table_name" \
    --query "'Items[]'" |
    jq -c '.[]'
}
