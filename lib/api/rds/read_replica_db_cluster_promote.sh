p6_aws_rds_read_replica_db_cluster_promote() {
    local db_cluster_identifier="$1"
    shift 1

    p6_log_or_run aws rds promote-read-replica-db-cluster --db-cluster-identifier $db_cluster_identifier "$@"
}
