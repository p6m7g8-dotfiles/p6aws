p6_aws_machinelearning_data_source_get() {
    local data_source_id="$1"
    shift 1

    p6_log_and_run aws machinelearning get-data-source --data-source-id $data_source_id "$@"
}
