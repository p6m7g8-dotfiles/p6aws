######################################################################
#<
#
# Function:
#	p6_aws_clouddirectory_facet_create(schema_arn, name)
#
#  Args:
#	schema_arn - 
#	name - 
#
#>
######################################################################
p6_aws_clouddirectory_facet_create() {
    local schema_arn="$1"
    local name="$2"
    shift 2

    p6_run_write_cmd aws clouddirectory create-facet --schema-arn $schema_arn --name $name "$@"
}