# shellcheck shell=bash
######################################################################
#<
#
# Function: p6_aws_svc_route53_zones_hosted_list()
#
#>
######################################################################
p6_aws_svc_route53_zones_hosted_list() {

    p6_aws_cli_cmd route53 list-hosted-zones --query "'HostedZones[].[Name, ResourceRecordCount, Id, Config.PrivateZone, Config.Comment]'" --output text
}

######################################################################
#<
#
# Function: p6_aws_svc_route53_zones_hosted_id_from_zone(zone)
#
#  Args:
#	zone -
#
#>
######################################################################
p6_aws_svc_route53_zones_hosted_id_from_zone() {
    local zone="$1"

    p6_aws_cli_cmd route53 list-hosted-zones --query "'HostedZones[].[Name, Id]'" --output text | awk "/$zone/ { print $3 }" | awk -F/ '{ print $3 }'
}
