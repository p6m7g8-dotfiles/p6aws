p6_aws_mediaconvert_queue_delete() {
    local name="$1"
    shift 1

    p6_log_or_run aws mediaconvert delete-queue --name $name "$@"
}
