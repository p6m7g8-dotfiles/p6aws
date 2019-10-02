######################################################################
#<
#
# Function:
#	p6_aws_ssm_deployable_patch_snapshot_for_instance_get(instance_id, snapshot_id)
#
#  Args:
#	instance_id - 
#	snapshot_id - 
#
#>
######################################################################
p6_aws_ssm_deployable_patch_snapshot_for_instance_get() {
    local instance_id="$1"
    local snapshot_id="$2"
    shift 2

    p6_run_read_cmd aws ssm get-deployable-patch-snapshot-for-instance --instance-id $instance_id --snapshot-id $snapshot_id "$@"
}