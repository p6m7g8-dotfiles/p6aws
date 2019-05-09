p6_aws_rds_db_cluster_endpoint_create() {
    local db_cluster_identifier="$1"
    local db_cluster_endpoint_identifier="$2"
    local endpoint_type="$3"
    shift 3

    p6_log_or_run aws rds create-db-cluster-endpoint --db-cluster-identifier $db_cluster_identifier --db-cluster-endpoint-identifier $db_cluster_endpoint_identifier --endpoint-type $endpoint_type "$@"
}
