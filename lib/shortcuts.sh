p6_aws_shortcuts_unset() {
    local org="$1"

    local func
    for func in $(typeset -f | awk '/^[a-z_0-9]+ \(\)/ { print $1 }' | grep ${org}_awsa_); do
	unset $func
    done
}

p6_aws_shortcuts_set() {
    local org="$1"
    local cred_file="$2"

    local profile
    for profile in $(awk '/^\[/ { print }' < $cred_file | grep -v default | sed -e 's,[][],,g'); do
	local region=$(p6_aws_util_region_for_profile_from_cred_file "$profile" "$cred_file")
	eval "${org}_awsa_${profile}() { p6_aws_shortcut_set \"$profile\" \"$region\" \"env\" \"type\" }"
    done
}

p6_aws_shortcut_set() {
    local profile="$1"
    local region="$2"
    local env="$3"
    local type="$4"

    p6_aws_cfg_set "$profile" "$region" "$env" "vpc" "env_level" "$type"
}

p6_aws_shortcuts() {
    local org="$1"
    local cred_file="$2"

    p6_aws_shortcuts_unset "$org"
    p6_aws_shortcuts_set "$org" "$cred_file"
}
