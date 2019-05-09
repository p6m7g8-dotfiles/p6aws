p6_aws_sdb_domain_delete() {
    local domain_name="$1"
    shift 1

    p6_log_or_run aws sdb delete-domain --domain-name $domain_name "$@"
}
