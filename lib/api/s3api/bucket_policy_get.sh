p6_aws_s3api_bucket_policy_get() {
    local bucket="$1"
    shift 1

    p6_log_and_run aws s3api get-bucket-policy --bucket $bucket "$@"
}
