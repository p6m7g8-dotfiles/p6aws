p6_aws_machinelearning_batch_prediction_get() {
    local batch_prediction_id="$1"
    shift 1

    p6_log_and_run aws machinelearning get-batch-prediction --batch-prediction-id $batch_prediction_id "$@"
}
