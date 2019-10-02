######################################################################
#<
#
# Function:
#	p6_aws_s3api_bucket_head(bucket)
#
#  Args:
#	bucket - 
#
#>
######################################################################
p6_aws_s3api_bucket_head() {
    local bucket="$1"
    shift 1

    p6_run_write_cmd aws s3api head-bucket --bucket $bucket "$@"
}