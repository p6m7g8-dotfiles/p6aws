p6_aws_sqs_queue_attributes_get() {
    local queue_url="$1"
    shift 1

    p6_log_and_run aws sqs get-queue-attributes --queue-url $queue_url "$@"
}
