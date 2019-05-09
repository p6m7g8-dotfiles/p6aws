p6_aws_s3api_bucket_inventory_configuration_get() {
    local bucket="$1"
    local id="$2"
    shift 2

    p6_log_and_run aws s3api get-bucket-inventory-configuration --bucket $bucket --id $id "$@"
}
