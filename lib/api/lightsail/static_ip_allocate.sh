p6_aws_lightsail_static_ip_allocate() {
    local static_ip_name="$1"
    shift 1

    p6_log_or_run aws lightsail allocate-static-ip --static-ip-name $static_ip_name "$@"
}
