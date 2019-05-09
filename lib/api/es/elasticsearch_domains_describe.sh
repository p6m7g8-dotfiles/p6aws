p6_aws_es_elasticsearch_domains_describe() {
    local domain_names="$1"
    shift 1

    p6_log_and_run aws es describe-elasticsearch-domains --domain-names $domain_names "$@"
}
