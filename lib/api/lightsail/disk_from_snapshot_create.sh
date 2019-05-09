p6_aws_lightsail_disk_from_snapshot_create() {
    local disk_name="$1"
    local disk_snapshot_name="$2"
    local availability_zone="$3"
    local size_in_gb="$4"
    shift 4

    p6_log_or_run aws lightsail create-disk-from-snapshot --disk-name $disk_name --disk-snapshot-name $disk_snapshot_name --availability-zone $availability_zone --size-in-gb $size_in_gb "$@"
}
