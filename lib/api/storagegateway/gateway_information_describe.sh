p6_aws_storagegateway_gateway_information_describe() {
    local gateway_arn="$1"
    shift 1

    p6_log_and_run aws storagegateway describe-gateway-information --gateway-arn $gateway_arn "$@"
}
