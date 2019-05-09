p6_aws_elasticache_cache_cluster_modify() {
    local cache_cluster_id="$1"
    shift 1

    p6_log_or_run aws elasticache modify-cache-cluster --cache-cluster-id $cache_cluster_id "$@"
}
