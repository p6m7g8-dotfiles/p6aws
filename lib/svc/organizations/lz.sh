# shellcheck shell=bash
######################################################################
#<
#
# Function: p6_aws_svc_organizations_lz_do(...)
#
#  Args:
#	... - 
#
#>
######################################################################
p6_aws_svc_organizations_lz_do() {
    shift 0

    local account_id
    for account_id in $(p6_aws_svc_organizations_accounts_list_active | p6_filter_row_exclude "Admin" | p6_filter_column_pluck 1); do
        p6_aws_svc_organizations_sts_run_as "$account_id" "$*" 2>&/dev/null | p6_filter_translate_start_to_arg "$account_id\t"
    done | p6_filter_row_exclude_regex '^\['

    p6_return_void
}
