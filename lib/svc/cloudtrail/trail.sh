######################################################################
#<
#
# Function: stream  = p6_aws_svc_cloudtrail_trail_arns([prefix=.])
#
#  Args:
#	OPTIONAL prefix - [.]
#
#  Returns:
#	stream - 
#
#>
######################################################################
p6_aws_svc_cloudtrail_trail_arns() {
  local prefix="${1:-.}"

  p6_aws_cli_cmd cloudtrail list-trails --query "'Trails[*].TrailARN'" --output text | grep "$prefix"

  p6_return_stream
}


