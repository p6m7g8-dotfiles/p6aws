p6_aws_organizations_parents_list() {
    local child_id="$1"
    shift 1

    p6_log_and_run aws organizations list-parents --child-id $child_id "$@"
}
