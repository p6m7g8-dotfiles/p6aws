######################################################################
#<
#
# Function: str str = p6_aws_cfg_prompt_info(kind)
#
#  Args:
#	kind -
#
#  Returns:
#	str - str
#
#>
######################################################################
p6_aws_cfg_prompt_info() {
    local kind="$1"

    local org=$(p6_aws_env_org"${kind}")
    local profile=$(p6_aws_env_profile"${kind}")
    local region=$(p6_aws_env_region"${kind}")
    local aws_env=$(p6_aws_env_env"${kind}")
    local vpc_id=$(p6_aws_env_vpc_id"${kind}")
    local eks_cluster=$(p6_aws_env_eks_cluster_name"${kind}")

    local str
    if p6_string_blank_NOT "$org"; then
        str="org:$org"
    fi
    if p6_string_blank_NOT "$profile"; then
        kind=${kind/_/}
        str="$str - ${kind}:$profile"
    fi
    if p6_string_blank_NOT "$region"; then
        str="$str region:$region"
    fi
    if p6_string_blank_NOT "$aws_env"; then
        str="$str env:$aws_env"
    fi
    if p6_string_blank_NOT "$vpc_id"; then
        str="$str vpc:$vpc_id"
    fi
    if p6_string_blank_NOT "$eks_cluster"; then
        str="$str eks:$eks_cluster"
    fi

    p6_return_str "$str"
}
