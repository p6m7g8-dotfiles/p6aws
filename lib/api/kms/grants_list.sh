p6_aws_kms_grants_list() {
    local key_id="$1"
    shift 1

    p6_log_and_run aws kms list-grants --key-id $key_id "$@"
}
