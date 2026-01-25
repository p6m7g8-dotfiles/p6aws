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
		p6_filter_sort_numeric_by_column 1

	p6_return_stream
}
