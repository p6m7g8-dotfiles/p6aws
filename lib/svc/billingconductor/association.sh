######################################################################
#<
#
# Function: p6_aws_svc_billingconductor_associations_list()
#
#>
######################################################################
p6_aws_svc_billingconductor_associations_list() {

    p6_aws_cli_cmd billingconductor list-account-associations --output text --query "'LinkedAccounts[].[AccountId, AccountName, AccountEmail]'"
}
