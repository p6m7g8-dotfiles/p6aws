######################################################################
#<
#
# Function:
#	p6_aws_s3_presign()
#
#>
######################################################################
p6_aws_s3_presign() {

    p6_run_write_cmd aws s3 presign "$@"
}