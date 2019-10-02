######################################################################
#<
#
# Function:
#	p6_aws_lightsail_disk_snapshot_delete(disk_snapshot_name)
#
#  Args:
#	disk_snapshot_name - 
#
#>
######################################################################
p6_aws_lightsail_disk_snapshot_delete() {
    local disk_snapshot_name="$1"
    shift 1

    p6_run_write_cmd aws lightsail delete-disk-snapshot --disk-snapshot-name $disk_snapshot_name "$@"
}