p6_aws_rds_db_cluster_parameter_group_modify() {
    local db_cluster_parameter_group_name="$1"
    local parameters="$2"
    shift 2

    p6_log_or_run aws rds modify-db-cluster-parameter-group --db-cluster-parameter-group-name $db_cluster_parameter_group_name --parameters $parameters "$@"
}
