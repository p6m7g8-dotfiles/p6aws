p6_aws_route53domains_domain_auth_code_retrieve() {
    local domain_name="$1"
    shift 1

    p6_log_or_run aws route53domains retrieve-domain-auth-code --domain-name $domain_name "$@"
}
