p6_aws_s3api_multipart_upload_create() {
    local bucket="$1"
    local key="$2"
    shift 2

    p6_log_or_run aws s3api create-multipart-upload --bucket $bucket --key $key "$@"
}
