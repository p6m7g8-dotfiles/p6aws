p6_aws_storagegateway_vtl_devices_describe() {
    local gateway_arn="$1"
    shift 1

    p6_log_and_run aws storagegateway describe-vtl-devices --gateway-arn $gateway_arn "$@"
}
