p6_aws_glacier_vault_access_policy_set() {
    local account_id="$1"
    local vault_name="$2"
    shift 2

    p6_log_or_run aws glacier set-vault-access-policy --account-id $account_id --vault-name $vault_name "$@"
}
