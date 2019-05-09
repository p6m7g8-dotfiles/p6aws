p6_aws_route53domains_tags_for_domain_update() {
    local domain_name="$1"
    shift 1

    p6_log_or_run aws route53domains update-tags-for-domain --domain-name $domain_name "$@"
}
