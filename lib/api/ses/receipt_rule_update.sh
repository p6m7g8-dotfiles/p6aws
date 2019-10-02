######################################################################
#<
#
# Function:
#	p6_aws_ses_receipt_rule_update(rule_set_name, rule)
#
#  Args:
#	rule_set_name - 
#	rule - 
#
#>
######################################################################
p6_aws_ses_receipt_rule_update() {
    local rule_set_name="$1"
    local rule="$2"
    shift 2

    p6_run_write_cmd aws ses update-receipt-rule --rule-set-name $rule_set_name --rule $rule "$@"
}