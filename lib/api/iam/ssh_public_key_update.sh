p6_aws_iam_ssh_public_key_update() {
    local user_name="$1"
    local ssh_public_key_id="$2"
    local status="$3"
    shift 3

    p6_log_or_run aws iam update-ssh-public-key --user-name $user_name --ssh-public-key-id $ssh_public_key_id --status $status "$@"
}
