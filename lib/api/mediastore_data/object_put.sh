p6_aws_mediastore_data_object_put() {
    local body="$1"
    local path="$2"
    shift 2

    p6_log_or_run aws mediastore-data put-object --body $body --path $path "$@"
}
