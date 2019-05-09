p6_aws_elb_tags_remove() {
    local load_balancer_names="$1"
    local tags="$2"
    shift 2

    p6_log_or_run aws elb remove-tags --load-balancer-names $load_balancer_names --tags $tags "$@"
}
