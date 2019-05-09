p6_aws_glacier_provisioned_capacity_list() {
    local account_id="$1"
    shift 1

    p6_log_and_run aws glacier list-provisioned-capacity --account-id $account_id "$@"
}
