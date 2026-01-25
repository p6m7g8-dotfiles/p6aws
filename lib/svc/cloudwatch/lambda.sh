# shellcheck shell=sh
######################################################################
#<
#
# Function: p6_aws_svc_logs_lambda_watch_jq(log_group_name)
#
#  Args:
#	log_group_name -
#
#>
######################################################################
p6_aws_svc_logs_lambda_watch_jq() {
    local log_group_name="$1"

    p6_aws_svc_logs_watch "$log_group_name" |
        while read -r line; do
	    if p6_string_contains "$line" "}"; then
              json=$(p6_echo "$line" | p6_filter_extract_after "{" | p6_filter_translate_start_to_arg "{")
	      echo "$json" | jq "."
            else
              echo "$line"
            fi
        done
}
