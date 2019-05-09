aws_dax_replication_factor_increase() {
    local cluster_name="$1"
    local new_replication_factor="$2"
    shift 2

    cond_log_and_run aws dax increase-replication-factor --cluster-name $cluster_name --new-replication-factor $new_replication_factor "$@"
}
