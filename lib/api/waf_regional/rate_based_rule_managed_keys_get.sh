p6_aws_waf_regional_rate_based_rule_managed_keys_get() {
    local rule_id="$1"
    shift 1

    p6_log_and_run aws waf-regional get-rate-based-rule-managed-keys --rule-id $rule_id "$@"
}
