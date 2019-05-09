p6_aws_kinesis_tags_for_stream_list() {
    local stream_name="$1"
    shift 1

    p6_log_and_run aws kinesis list-tags-for-stream --stream-name $stream_name "$@"
}
