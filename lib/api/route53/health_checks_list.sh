p6_aws_route53_health_checks_list() {

    p6_log_and_run aws route53 list-health-checks "$@"
}
