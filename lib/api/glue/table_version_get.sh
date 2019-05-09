p6_aws_glue_table_version_get() {
    local database_name="$1"
    local table_name="$2"
    shift 2

    p6_log_and_run aws glue get-table-version --database-name $database_name --table-name $table_name "$@"
}
