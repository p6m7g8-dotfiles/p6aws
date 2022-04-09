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
