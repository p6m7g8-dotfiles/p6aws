p6_aws_waf_size_constraint_set_get() {
    local size_constraint_set_id="$1"
    shift 1

    p6_log_and_run aws waf get-size-constraint-set --size-constraint-set-id $size_constraint_set_id "$@"
}
