p6_aws_mediaconvert_job_cancel() {
    local id="$1"
    shift 1

    p6_log_or_run aws mediaconvert cancel-job --id $id "$@"
}
