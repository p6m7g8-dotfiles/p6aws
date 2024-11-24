######################################################################
#<
#
# Function: stream  = p6_aws_svc_cloudformation_stacks_list()
#
#  Returns:
#	stream - 
#
#>
######################################################################
p6_aws_svc_cloudformation_stacks_list() {

	p6_aws_cli_cmd cloudformation describe-stacks \
		--output text \
		--query "'Stacks[*].[CreationTime, StackStatus, StackId, StackName]'" |
		sort -k 1,1 -n

	p6_return_stream
}
