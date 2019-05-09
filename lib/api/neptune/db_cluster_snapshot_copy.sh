p6_aws_neptune_db_cluster_snapshot_copy() {
    local source_db_cluster_snapshot_identifier="$1"
    local target_db_cluster_snapshot_identifier="$2"
    shift 2

    p6_log_or_run aws neptune copy-db-cluster-snapshot --source-db-cluster-snapshot-identifier $source_db_cluster_snapshot_identifier --target-db-cluster-snapshot-identifier $target_db_cluster_snapshot_identifier "$@"
}
