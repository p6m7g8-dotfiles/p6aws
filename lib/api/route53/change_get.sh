p6_aws_route53_change_get() {
    local id="$1"
    shift 1

    p6_log_and_run aws route53 get-change --id $id "$@"
}
