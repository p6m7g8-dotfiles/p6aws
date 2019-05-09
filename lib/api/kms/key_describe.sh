p6_aws_kms_key_describe() {
    local key_id="$1"
    shift 1

    p6_log_and_run aws kms describe-key --key-id $key_id "$@"
}
