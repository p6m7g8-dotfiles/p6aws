# shellcheck shell=bash

######################################################################
#<
#
# Function: p6_aws_svc_glue_crawlers_arn_list()
#
#  Environment:	 START
#>
######################################################################
p6_aws_svc_glue_crawlers_arn_list() {

    aws glue list-dev-endpoints --query "DevEndpointNames" --output text

    p6_return_void
}
