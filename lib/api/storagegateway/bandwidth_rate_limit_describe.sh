p6_aws_storagegateway_bandwidth_rate_limit_describe() {
    local gateway_arn="$1"
    shift 1

    p6_log_and_run aws storagegateway describe-bandwidth-rate-limit --gateway-arn $gateway_arn "$@"
}
