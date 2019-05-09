p6_aws_iotanalytics_pipeline_reprocessing_cancel() {
    local pipeline_name="$1"
    local reprocessing_id="$2"
    shift 2

    p6_log_or_run aws iotanalytics cancel-pipeline-reprocessing --pipeline-name $pipeline_name --reprocessing-id $reprocessing_id "$@"
}
