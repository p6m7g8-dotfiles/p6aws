######################################################################
#<
#
# Function:
#	p6_aws_worklink_website_certificate_authority_describe(fleet_arn, website_ca_id)
#
#  Args:
#	fleet_arn - 
#	website_ca_id - 
#
#>
######################################################################
p6_aws_worklink_website_certificate_authority_describe() {
    local fleet_arn="$1"
    local website_ca_id="$2"
    shift 2

    p6_run_read_cmd aws worklink describe-website-certificate-authority --fleet-arn $fleet_arn --website-ca-id $website_ca_id "$@"
}