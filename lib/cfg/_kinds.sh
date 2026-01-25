######################################################################
#<
#
# Function: p6_aws_cfg_restore__from(kind)
#
#  Args:
#	kind -
#
#>
######################################################################
p6_aws_cfg_restore__from() {
    local kind="$1"

    local kv
    for kv in $(p6_aws_cfg_show | p6_filter_row_select "_${kind}"); do
        local var
        local var_norm
        local fname_all
        local fname
        local func
        local val
        local func_active

        var=$(p6_echo "$kv" | p6_filter_column_pluck 1 "=")

        var_norm=$(p6_string_lc "$var")
        fname_all=$(p6_string_strip_prefix "$var_norm" "aws_")
        fname=$(p6_string_strip_suffix "$fname_all" "_${kind}")
        func="p6_aws_env_${fname}_${kind}"

        val=$(p6_run_code "$func")

        func_active="p6_aws_env_${fname}_active"

        p6_run_code "$func_active \"$val\""

        p6_env_export_un "$var"
    done >/dev/null

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_cfg__copy(kind_from, kind_to)
#
#  Args:
#	kind_from -
#	kind_to -
#
#>
######################################################################
p6_aws_cfg__copy() {
    local kind_from="$1"
    local kind_to="$2"

    local var
    for var in $(p6_aws_cfg_vars); do
        local var_norm=$(p6_string_lc "$var")
        local fname=$(p6_string_strip_prefix "$var_norm" "aws_")

        local func_from="p6_aws_env_${fname}_${kind_from}"
        local val=$(p6_run_code "$func_from")

        local func_to="p6_aws_env_${fname}_${kind_to}"
        p6_aws_cfg__debug "__copy(): [from=$func_from] -> [to=$func_to]"

        p6_run_code "$func_to \"$val\""
    done >/dev/null

    p6_return_void
}
