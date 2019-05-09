p6_aws_quicksight_user_update() {
    local user_name="$1"
    local aws_account_id="$2"
    local namespace="$3"
    local email="$4"
    local role="$5"
    shift 5

    p6_log_or_run aws quicksight update-user --user-name $user_name --aws-account-id $aws_account_id --namespace $namespace --email $email --role $role "$@"
}
