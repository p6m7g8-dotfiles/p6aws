p6_aws_iotanalytics_datastore_describe() {
    local datastore_name="$1"
    shift 1

    p6_log_and_run aws iotanalytics describe-datastore --datastore-name $datastore_name "$@"
}
