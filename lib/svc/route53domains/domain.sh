# shellcheck shell=sh
######################################################################
#<
#
# Function: p6_aws_svc_route53_domains_list()
#
#>
#/ Synopsis:
#/   This command runs only in the us-east-1 Region. If your default region
#/   is set to us-east-1, you can omit the region parameter.
#/
######################################################################
p6_aws_svc_route53_domains_list() {

    p6_aws_cli_cmd route53domains list-domains --region us-east-1 --output text --query "'Domains[].[DomainName, AutoRenew, TransferLock]'"
}

######################################################################
#<
#
# Function: p6_aws_svc_route53_domains_list_not_locked()
#
#>
######################################################################
p6_aws_svc_route53_domains_list_not_locked() {

    p6_aws_svc_route53_domains_list | awk '$3 == "False"'
}

######################################################################
#<
#
# Function: p6_aws_svc_route53_domains_list_not_autorenew()
#
#>
######################################################################
p6_aws_svc_route53_domains_list_not_autorenew() {

    p6_aws_svc_route53_domains_list | awk '$2 == "False"'
}

######################################################################
#<
#
# Function: p6_aws_svc_route53_domains_details(domain_name, ...)
#
#  Args:
#	domain_name -
#	... - 
#
#>
######################################################################
p6_aws_svc_route53_domains_details() {
    local domain_name="$1"
    shift 1

    p6_aws_cli_cmd route53domains get-domain-detail --domain-name "$domain_name" "$@"
}

######################################################################
#<
#
# Function: p6_aws_svc_route53_domains_nameservers_api(domain_name)
#
#  Args:
#	domain_name -
#
#>
######################################################################
p6_aws_svc_route53_domains_nameservers_api() {
    local domain_name="$1"

    p6_aws_svc_route53_domains_details "$domain_name" --region us-east-1 --output text --query "'Nameservers'" | tr 'A-Z' 'a-z' | sort -u
}

######################################################################
#<
#
# Function: p6_aws_svc_route53_domains_nameservers_whois(domain_name)
#
#  Args:
#	domain_name -
#
#>
######################################################################
p6_aws_svc_route53_domains_nameservers_whois() {
    local domain_name="$1"

    whois "$domain_name" | awk -F: '/Name Server/ {print $2}' | dos2unix | sed -e 's, *,,g' | tr 'A-Z' 'a-z' | sort -u
}

######################################################################
#<
#
# Function: p6_aws_svc_route53_domains_nameservers_delta(domain_name)
#
#  Args:
#	domain_name -
#
#>
######################################################################
p6_aws_svc_route53_domains_nameservers_delta() {
    local domain_name="$1"

    p6_aws_svc_route53_domains_nameservers_api "$domain_name" >/tmp/p6-1
    p6_aws_svc_route53_domains_nameservers_whois "$domain_name" >/tmp/p6-2

    diff -u /tmp/p6-1 /tmp/p6-2
    rm -f /tmp/p6-1 /tmp/p6-2
}
