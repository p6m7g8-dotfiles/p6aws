######################################################################
#<
#
# Function:
#	p6_aws_xray_group_update()
#
#>
######################################################################
p6_aws_xray_group_update() {

    p6_run_write_cmd aws xray update-group "$@"
}