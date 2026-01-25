######################################################################
#<
#
# Function: p6_aws_cfg_realize(profile)
#
#  Args:
#	profile -
#
#>
######################################################################
p6_aws_cfg_realize() {
    local profile="$1"

    p6_aws_util_env_profile "$profile"

    local conf_file
    conf_file=$(p6_aws_env_config_file_active)

    # does section exist; if so process
    if p6_file_contains "$profile" "$conf_file"; then
        p6_aws_cfg__debug "realize(): {profile($profile) in ($conf_file)}"
        local line
        local section=none

        while read -r line; do
            p6_aws_cfg__debug "realize(): {line=$line}"

            case $line in
	    credential_process*) ;;
	    sso_auto_populated*) ;;
            *\[*$profile*\]*)
                p6_aws_cfg__debug "realize(): {section=$profile}"

                section=$profile
                ;;
            *=*)
                p6_aws_cfg__debug "realize(): {k/v=$line}"

                if p6_string_eq "$section" "$profile"; then
                    local key
                    local val
                    key=$(p6_echo "$line" | p6_filter_column_pluck 1 "=" | p6_filter_strip_spaces)
                    val=$(p6_echo "$line" | p6_filter_column_pluck 2 "=" | p6_filter_strip_spaces)

		    case $key in
                    *region*) p6_aws_util_env_region "$val" ;;
                    *) p6_aws_env_"${key}"_active "$val" ;;
                    esac
                fi
                ;;
            "")
                p6_aws_cfg__debug "realize(): {section end}"
                if p6_string_eq "$section" "$profile"; then
                    break
                fi
                section=none
                ;;
            esac
        done <"$conf_file" >/dev/null
    fi

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_cfg_show()
#
#>
######################################################################
p6_aws_cfg_show() {

    p6_env_list "^AWS_"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_cfg_reset()
#
#  Environment:	 AWS_PAGER
#>
######################################################################
p6_aws_cfg_reset() {

    local kv
    for kv in $(p6_aws_cfg_show); do
        local k=$(p6_echo $kv | p6_filter_column_pluck 1 "=")
        p6_env_export_un "$k"
    done

    p6_env_export "AWS_PAGER" ""

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_cfg_clear()
#
#  Environment:	 AWS_PAGER
#>
######################################################################
p6_aws_cfg_clear() {

    local kv
    for kv in $(p6_aws_cfg_show | p6_filter_row_exclude "_saved"); do
        local k=$(p6_echo $kv | p6_filter_column_pluck 1 "=")
        p6_env_export_un "$k"
    done

    p6_env_export "AWS_PAGER" ""

    p6_return_void
}
