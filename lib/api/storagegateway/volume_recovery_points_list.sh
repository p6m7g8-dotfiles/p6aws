p6_aws_storagegateway_volume_recovery_points_list() {
    local gateway_arn="$1"
    shift 1

    p6_log_and_run aws storagegateway list-volume-recovery-points --gateway-arn $gateway_arn "$@"
}
