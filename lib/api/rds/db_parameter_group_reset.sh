p6_aws_rds_db_parameter_group_reset() {
    local db_parameter_group_name="$1"
    shift 1

    p6_log_or_run aws rds reset-db-parameter-group --db-parameter-group-name $db_parameter_group_name "$@"
}
