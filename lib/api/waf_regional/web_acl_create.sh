p6_aws_waf_regional_web_acl_create() {
    local name="$1"
    local metric_name="$2"
    local default_action="$3"
    local change_token="$4"
    shift 4

    p6_log_or_run aws waf-regional create-web-acl --name $name --metric-name $metric_name --default-action $default_action --change-token $change_token "$@"
}
