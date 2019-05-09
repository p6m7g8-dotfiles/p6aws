p6_aws_lightsail_domain_entry_delete() {
    local domain_name="$1"
    local domain_entry="$2"
    shift 2

    p6_log_or_run aws lightsail delete-domain-entry --domain-name $domain_name --domain-entry $domain_entry "$@"
}
