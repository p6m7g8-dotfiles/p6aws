p6_aws_rds_db_instance_to_point_in_time_restore() {
    local target_db_instance_identifier="$1"
    shift 1

    p6_log_or_run aws rds restore-db-instance-to-point-in-time --target-db-instance-identifier $target_db_instance_identifier "$@"
}
