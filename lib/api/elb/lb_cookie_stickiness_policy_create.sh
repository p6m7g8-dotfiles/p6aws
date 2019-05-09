p6_aws_elb_lb_cookie_stickiness_policy_create() {
    local load_balancer_name="$1"
    local policy_name="$2"
    shift 2

    p6_log_or_run aws elb create-lb-cookie-stickiness-policy --load-balancer-name $load_balancer_name --policy-name $policy_name "$@"
}
