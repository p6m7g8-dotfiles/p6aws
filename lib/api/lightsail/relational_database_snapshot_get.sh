p6_aws_lightsail_relational_database_snapshot_get() {
    local relational_database_snapshot_name="$1"
    shift 1

    p6_log_and_run aws lightsail get-relational-database-snapshot --relational-database-snapshot-name $relational_database_snapshot_name "$@"
}
