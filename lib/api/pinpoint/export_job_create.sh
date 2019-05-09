p6_aws_pinpoint_export_job_create() {
    local application_id="$1"
    local export_job_request="$2"
    shift 2

    p6_log_or_run aws pinpoint create-export-job --application-id $application_id --export-job-request $export_job_request "$@"
}
