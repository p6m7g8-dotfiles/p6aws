######################################################################
#<
#
# Function: p6_aws_svc_s3_buckets_list()
#
#>
######################################################################
p6_aws_svc_s3_buckets_list() {

    p6_aws_cli_cmd s3 ls "$@"
}

######################################################################
#<
#
# Function: str bucket_name = p6_aws_svc_s3_bucket_find_prefix(prefix)
#
#  Args:
#	prefix -
#
#  Returns:
#	str - bucket_name
#
#>
######################################################################
p6_aws_svc_s3_bucket_find_prefix() {
    local prefix="$1"

    local bucket_name=$(p6_aws_svc_s3_buckets_list | grep "$prefix" | awk '{ print $3 }')

    p6_return_str "$bucket_name"
}

######################################################################
#<
#
# Function: p6_aws_svc_s3_bucket_list(bucket)
#
#  Args:
#	bucket -
#
#>
######################################################################
p6_aws_svc_s3_bucket_list() {
    local bucket="$1"

    p6_aws_svc_s3_buckets_list s3://$bucket --recursive --human-readable --summarize
}

######################################################################
#<
#
# Function: p6_aws_svc_s3_bucket_policy()
#
#>
######################################################################
p6_aws_svc_s3_bucket_policy() {

    p6_aws_cli_cmd s3api get-bucket-policy "$@"
}
