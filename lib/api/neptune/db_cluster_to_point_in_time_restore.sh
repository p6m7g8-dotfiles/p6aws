p6_aws_neptune_db_cluster_to_point_in_time_restore() {
    local db_cluster_identifier="$1"
    local source_db_cluster_identifier="$2"
    shift 2

    p6_log_or_run aws neptune restore-db-cluster-to-point-in-time --db-cluster-identifier $db_cluster_identifier --source-db-cluster-identifier $source_db_cluster_identifier "$@"
}
