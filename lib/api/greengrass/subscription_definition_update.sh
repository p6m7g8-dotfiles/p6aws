######################################################################
#<
#
# Function:
#	p6_aws_greengrass_subscription_definition_update(subscription_definition_id)
#
#  Args:
#	subscription_definition_id - 
#
#>
######################################################################
p6_aws_greengrass_subscription_definition_update() {
    local subscription_definition_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass update-subscription-definition --subscription-definition-id $subscription_definition_id "$@"
}