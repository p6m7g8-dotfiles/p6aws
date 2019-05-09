p6_aws_waf_ip_set_update() {
    local ip_set_id="$1"
    local change_token="$2"
    local updates="$3"
    shift 3

    p6_log_or_run aws waf update-ip-set --ip-set-id $ip_set_id --change-token $change_token --updates $updates "$@"
}
