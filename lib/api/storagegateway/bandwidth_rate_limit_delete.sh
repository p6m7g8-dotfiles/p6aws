p6_aws_storagegateway_bandwidth_rate_limit_delete() {
    local gateway_arn="$1"
    local bandwidth_type="$2"
    shift 2

    p6_log_or_run aws storagegateway delete-bandwidth-rate-limit --gateway-arn $gateway_arn --bandwidth-type $bandwidth_type "$@"
}
