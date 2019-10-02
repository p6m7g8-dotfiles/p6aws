######################################################################
#<
#
# Function:
#	p6_aws_clouddirectory_typed_link_facet_names_list(schema_arn)
#
#  Args:
#	schema_arn - 
#
#>
######################################################################
p6_aws_clouddirectory_typed_link_facet_names_list() {
    local schema_arn="$1"
    shift 1

    p6_run_read_cmd aws clouddirectory list-typed-link-facet-names --schema-arn $schema_arn "$@"
}