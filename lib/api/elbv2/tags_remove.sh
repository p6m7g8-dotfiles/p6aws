######################################################################
#<
#
# Function:
#	p6_aws_elbv2_tags_remove(resource_arns, tag_keys)
#
#  Args:
#	resource_arns - 
#	tag_keys - 
#
#>
######################################################################
p6_aws_elbv2_tags_remove() {
    local resource_arns="$1"
    local tag_keys="$2"
    shift 2

    p6_run_write_cmd aws elbv2 remove-tags --resource-arns $resource_arns --tag-keys $tag_keys "$@"
}