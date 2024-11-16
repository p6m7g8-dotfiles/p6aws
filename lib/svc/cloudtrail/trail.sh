######################################################################
#<
#
# Function: stream  = p6_aws_svc_cloudtrail_trail_arns()
#
#  Returns:
#	stream - 
#
#  Environment:	 ARN
#>
######################################################################
p6_aws_svc_cloudtrail_trail_arns() {

  p6_aws_cli_cmd cloudtrail list-trails --query "'Trails[*].TrailARN'" --output text

  p6_return_stream
}

######################################################################
#<
#
# Function: p6_aws_svc_cloudtrail_trail_logging_start(trail_arn)
#
#  Args:
#	trail_arn -
#
#>
######################################################################
p6_aws_svc_cloudtrail_trail_logging_start() {
  local trail_arn="$1"

  p6_aws_cli_cmd cloudtrail start-logging --name "$trail_arn"

  p6_return_void
}
