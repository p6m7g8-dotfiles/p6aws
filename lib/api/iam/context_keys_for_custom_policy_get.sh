######################################################################
#<
#
# Function:
#	p6_aws_iam_context_keys_for_custom_policy_get(policy_input_list)
#
#  Args:
#	policy_input_list - 
#
#>
######################################################################
p6_aws_iam_context_keys_for_custom_policy_get() {
    local policy_input_list="$1"
    shift 1

    p6_run_read_cmd aws iam get-context-keys-for-custom-policy --policy-input-list $policy_input_list "$@"
}