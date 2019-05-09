p6_aws_machinelearning_realtime_endpoint_delete() {
    local ml_model_id="$1"
    shift 1

    p6_log_or_run aws machinelearning delete-realtime-endpoint --ml-model-id $ml_model_id "$@"
}
