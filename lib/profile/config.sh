# shellcheck shell=bash

######################################################################
#<
#
# Function: p6_aws_profile_config_add(conf_file, profile)
#
#  Args:
#	conf_file -
#	profile -
#
#>
######################################################################
p6_aws_profile_config_add() {
    local conf_file="$1"
    local profile="$2"

    local region=us-east-1
    local output=json

    if p6_file_exists_NOT "$conf_file" || ! p6_file_contains "$profile" "$conf_file"; then
        p6_aws_profile__debug "config_add(): adding [$profile] -> [$conf_file]"
        p6_aws_template_process "sts/conf" "PROFILE=$profile" "REGION=$region" "OUTPUT=$output" >>"$conf_file"
    fi

    p6_return_void
}

######################################################################
#<
#
# Function: words profiles = p6_aws_profile_config_list()
#
#  Returns:
#	words - profiles
#
#>
######################################################################
p6_aws_profile_config_list() {

    local conf_file
    conf_file=$(p6_aws_env_config_file_active)

    profiles=$(p6_file_display "$conf_file" | p6_filter_row_select "^\[" | p6_filter_row_exclude "default" | p6_filter_extract_after "profile " | p6_filter_extract_before "]" | p6_filter_sort)

    p6_return_words "$profiles"
}
