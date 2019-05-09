p6_aws_s3api_bucket_versioning_put() {
    local bucket="$1"
    local versioning_configuration="$2"
    shift 2

    p6_log_or_run aws s3api put-bucket-versioning --bucket $bucket --versioning-configuration $versioning_configuration "$@"
}
