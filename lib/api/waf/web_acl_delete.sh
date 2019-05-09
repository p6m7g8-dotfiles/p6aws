p6_aws_waf_web_acl_delete() {
    local web_acl_id="$1"
    local change_token="$2"
    shift 2

    p6_log_or_run aws waf delete-web-acl --web-acl-id $web_acl_id --change-token $change_token "$@"
}
