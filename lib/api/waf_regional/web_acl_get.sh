p6_aws_waf_regional_web_acl_get() {
    local web_acl_id="$1"
    shift 1

    p6_log_and_run aws waf-regional get-web-acl --web-acl-id $web_acl_id "$@"
}
