p6_aws_route53_traffic_policy_instance_get() {
    local id="$1"
    shift 1

    p6_log_and_run aws route53 get-traffic-policy-instance --id $id "$@"
}
