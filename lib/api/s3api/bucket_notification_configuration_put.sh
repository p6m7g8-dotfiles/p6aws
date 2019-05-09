p6_aws_s3api_bucket_notification_configuration_put() {
    local bucket="$1"
    local notification_configuration="$2"
    shift 2

    p6_log_or_run aws s3api put-bucket-notification-configuration --bucket $bucket --notification-configuration $notification_configuration "$@"
}
