######################################################################
#<
#
# Function:
#	p6_aws_sms_server_catalog_delete()
#
#>
######################################################################
p6_aws_sms_server_catalog_delete() {

    p6_run_write_cmd aws sms delete-server-catalog "$@"
}