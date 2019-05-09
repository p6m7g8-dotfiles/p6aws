p6_aws_ds_from_snapshot_restore() {
    local snapshot_id="$1"
    shift 1

    p6_log_or_run aws ds restore-from-snapshot --snapshot-id $snapshot_id "$@"
}
