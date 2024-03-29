######################################################################
#<
#
# Function: p6_aws_cli_shortcuts_on(org)
#
#  Args:
#	org -
#
#>
######################################################################
p6_aws_cli_shortcuts_on() {
	local org="$1"

	p6_aws_util_env_config_file "$org"

	local conf_file
	conf_file=$(p6_aws_env_config_file_active)

	local line
	while read -r line; do
		p6_aws_profile__debug "util_init(): {line=$line}"

		case $line in
		*\[*\]*)
			p6_aws_profile__debug "util_init(): {begin profile}"

			local profile
			profile=$line
			profile=$(p6_string_replace "$profile" "\[" "")
			profile=$(p6_string_replace "$profile" "\]" "")
			profile=$(p6_string_replace "$profile" "profile " "")
			;;
		"")
			p6_aws_profile__debug "util_init(): {end profile}"
			p6_aws_cli_shortcuts_generate_one "$profile"
			;;
		esac
	done <"$conf_file" >/dev/null

	p6_return_void
}

######################################################################
#<
#
# Function: str func = p6_aws_cli_shortcuts_generate_one(profile)
#
#  Args:
#	profile -
#
#  Returns:
#	str - func
#
#>
######################################################################
p6_aws_cli_shortcuts_generate_one() {
	local profile="$1"

	local code
	local func
	local prefix

	prefix=$(p6_aws_cli_shortcuts_prefix)
	func="${prefix}_${profile}"
	code="$func() { p6_aws_cfg_realize \"$profile\" }"

	p6_run_code "$code"

	p6_return_str "$func"
}

######################################################################
#<
#
# Function: p6_aws_cli_shortcuts_generate_un(org)
#
#  Args:
#	org -
#
#>
######################################################################
p6_aws_cli_shortcuts_generate_un() {
	local org="$1"

	local func
	for func in $(typeset -f | awk '/^[a-z_0-9]+ \(\)/ { print $1 }' | grep "$(p6_aws_shortcuts_prefix \"$org\")"); do
		p6_env_export_un "$func"
	done
}

######################################################################
#<
#
# Function: str prefix = p6_aws_cli_shortcuts_prefix()
#
#  Returns:
#	str - prefix
#
#>
######################################################################
p6_aws_cli_shortcuts_prefix() {

	local prefix

	prefix="p6_awsa"

	p6_return_str "$prefix"
}

######################################################################
#<
#
# Function: str shell_function_name = p6_aws_shortcuts_profile_to_shell_function_name(profile)
#
#  Args:
#	profile -
#
#  Returns:
#	str - shell_function_name
#
#>
######################################################################
p6_aws_shortcuts_profile_to_shell_function_name() {
	local profile="$1"

	local shell_function_name
	shell_function_name=$(p6_string_replace "$profile" "/" "_")

	p6_return_str "$shell_function_name"
}
