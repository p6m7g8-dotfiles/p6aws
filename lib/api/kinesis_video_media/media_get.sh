p6_aws_kinesis_video_media_media_get() {
    local start_selector="$1"
    shift 1

    p6_log_and_run aws kinesis-video-media get-media --start-selector $start_selector "$@"
}
