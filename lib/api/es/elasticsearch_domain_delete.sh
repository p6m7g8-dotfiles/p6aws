p6_aws_es_elasticsearch_domain_delete() {
    local domain_name="$1"
    shift 1

    p6_log_or_run aws es delete-elasticsearch-domain --domain-name $domain_name "$@"
}
