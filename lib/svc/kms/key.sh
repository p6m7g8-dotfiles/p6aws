######################################################################
#<
#
# Function: p6_aws_svc_kms_list_aliases_mine()
#
#>
######################################################################
p6_aws_svc_kms_list_aliases_mine() {

	p6_aws_cli_cmd kms list-aliases \
		--output text \
		--query "'Aliases[].[AliasName, AliasArn]'" | p6_filter_row_exclude "alias/aws/" |
		p6_filter_sort
}

######################################################################
#<
#
# Function: p6_aws_svc_kms_list_aliases_aws()
#
#>
######################################################################
p6_aws_svc_kms_list_aliases_aws() {

	p6_aws_cli_cmd kms list-aliases \
		--output text \
		--query "'Aliases[].[AliasName, AliasArn]'" | p6_filter_row_select "alias/aws/" |
		p6_filter_sort
}

######################################################################
#<
#
# Function: p6_aws_svc_kms_list_aliases()
#
#>
######################################################################
p6_aws_svc_kms_list_aliases() {

	p6_aws_cli_cmd kms list-aliases \
		--output text \
		--query "'Aliases[].[AliasName, AliasArn]'" |
		p6_filter_sort
}
