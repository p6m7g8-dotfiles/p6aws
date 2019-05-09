p6_aws_sns_endpoint_attributes_get() {
    local endpoint_arn="$1"
    shift 1

    p6_log_and_run aws sns get-endpoint-attributes --endpoint-arn $endpoint_arn "$@"
}
