p6_aws_s3api_objects_v2_list() {
    local bucket="$1"
    shift 1

    p6_log_and_run aws s3api list-objects-v2 --bucket $bucket "$@"
}
