p6_aws_glacier_vault_lock_abort() {
    local account_id="$1"
    local vault_name="$2"
    shift 2

    p6_log_or_run aws glacier abort-vault-lock --account-id $account_id --vault-name $vault_name "$@"
}
