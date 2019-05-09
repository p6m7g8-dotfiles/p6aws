p6_aws_route53domains_domain_transfer_lock_enable() {
    local domain_name="$1"
    shift 1

    p6_log_or_run aws route53domains enable-domain-transfer-lock --domain-name $domain_name "$@"
}
