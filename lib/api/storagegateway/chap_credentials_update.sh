p6_aws_storagegateway_chap_credentials_update() {
    local target_arn="$1"
    local secret_to_authenticate_initiator="$2"
    local initiator_name="$3"
    shift 3

    p6_log_or_run aws storagegateway update-chap-credentials --target-arn $target_arn --secret-to-authenticate-initiator $secret_to_authenticate_initiator --initiator-name $initiator_name "$@"
}
