######################################################################
#<
#
# Function:
#	p6_aws_iotthingsgraph_system_templates_search()
#
#>
######################################################################
p6_aws_iotthingsgraph_system_templates_search() {

    p6_run_write_cmd aws iotthingsgraph search-system-templates "$@"
}