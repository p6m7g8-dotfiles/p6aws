######################################################################
#<
#
# Function:
#	p6_aws_ec2_volume_attribute_modify(volume_id)
#
#  Args:
#	volume_id - 
#
#>
######################################################################
p6_aws_ec2_volume_attribute_modify() {
    local volume_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 modify-volume-attribute --volume-id $volume_id "$@"
}