######################################################################
#<
#
# Function: aws_arn arn = p6_aws_svc_securityhub_aggregator_arn()
#
#  Returns:
#	aws_arn - arn
#
#>
######################################################################
p6_aws_svc_securityhub_aggregator_arn() {

    local arn=$(p6_aws_cli_cmd securityhub list-finding-aggregators --query "'FindingAggregators[0].FindingAggregatorArn'" --output text)

    p6_return_aws_arn "$arn"
}
