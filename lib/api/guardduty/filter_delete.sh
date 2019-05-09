p6_aws_guardduty_filter_delete() {
    local detector_id="$1"
    local filter_name="$2"
    shift 2

    p6_log_or_run aws guardduty delete-filter --detector-id $detector_id --filter-name $filter_name "$@"
}
