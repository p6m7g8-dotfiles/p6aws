p6_aws_iotanalytics_channel_create() {
    local channel_name="$1"
    shift 1

    p6_log_or_run aws iotanalytics create-channel --channel-name $channel_name "$@"
}
