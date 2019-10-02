######################################################################
#<
#
# Function:
#	p6_aws_opsworks_updates_on_boot(instance_id, layer_id)
#
#  Args:
#	instance_id - 
#	layer_id - 
#
#>
######################################################################
p6_aws_opsworks_updates_on_boot() {
        local instance_id="$1"
        shift 1

    cond_log_and_run aws opsworks update-instance --instance-id $instance_id --install-updates-on-boot "$@"
}

######################################################################
#<
#
# Function:
#	p6_aws_opsworks_optimized(instance_id)
#
#  Args:
#	instance_id - 
#
#>
######################################################################
p6_aws_opsworks_optimized() {
        local instance_id="$1"
        shift 1

    cond_log_and_run aws opsworks update-instance --instance-id $instance_id --ebs-optimized "$@"
}