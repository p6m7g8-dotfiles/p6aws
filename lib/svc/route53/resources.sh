# shellcheck shell=bash
######################################################################
#<
#
# Function: p6_aws_svc_route53_resources_list(zone)
#
#  Args:
#	zone -
#
#>
######################################################################
p6_aws_svc_route53_resources_list() {
    local zone="$1"

    local hosted_zone_id=$(p6_aws_svc_route53_zones_hosted_id_from_zone "$zone")

    p6_aws_cli_cmd route53 list-resource-record-sets --hosted-zone-id "$hosted_zone_id" --query "'ResourceRecordSets[]'" --output text | sed -e 's,RESOURCERECORDS,\t,'
}
