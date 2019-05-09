p6_aws_sqs_permission_add() {
    local queue_url="$1"
    local label="$2"
    local aws_account_ids="$3"
    local actions="$4"
    shift 4

    p6_log_or_run aws sqs add-permission --queue-url $queue_url --label $label --aws-account-ids $aws_account_ids --actions $actions "$@"
}
