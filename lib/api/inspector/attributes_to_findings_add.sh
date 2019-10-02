######################################################################
#<
#
# Function:
#	p6_aws_inspector_attributes_to_findings_add(finding_arns, attributes)
#
#  Args:
#	finding_arns - 
#	attributes - 
#
#>
######################################################################
p6_aws_inspector_attributes_to_findings_add() {
    local finding_arns="$1"
    local attributes="$2"
    shift 2

    p6_run_write_cmd aws inspector add-attributes-to-findings --finding-arns $finding_arns --attributes $attributes "$@"
}