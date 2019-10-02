######################################################################
#<
#
# Function:
#	p6_aws_route53_resource_record_sets_list(hosted_zone_id)
#
#  Args:
#	hosted_zone_id - 
#
#>
######################################################################
p6_aws_route53_resource_record_sets_list() {
    local hosted_zone_id="$1"
    shift 1

    p6_run_read_cmd aws route53 list-resource-record-sets --hosted-zone-id $hosted_zone_id "$@"
}