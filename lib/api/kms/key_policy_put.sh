p6_aws_kms_key_policy_put() {
    local key_id="$1"
    local policy_name="$2"
    local policy="$3"
    shift 3

    p6_log_or_run aws kms put-key-policy --key-id $key_id --policy-name $policy_name --policy $policy "$@"
}
