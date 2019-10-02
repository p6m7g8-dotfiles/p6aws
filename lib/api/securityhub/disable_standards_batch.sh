######################################################################
#<
#
# Function:
#	p6_aws_securityhub_disable_standards_batch(standards_subscription_arns)
#
#  Args:
#	standards_subscription_arns - 
#
#>
######################################################################
p6_aws_securityhub_disable_standards_batch() {
    local standards_subscription_arns="$1"
    shift 1

    p6_run_write_cmd aws securityhub batch-disable-standards --standards-subscription-arns $standards_subscription_arns "$@"
}