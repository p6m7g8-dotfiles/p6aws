p6_aws_s3control_public_access_block_get() {
    local account_id="$1"
    shift 1

    p6_log_and_run aws s3control get-public-access-block --account-id $account_id "$@"
}
