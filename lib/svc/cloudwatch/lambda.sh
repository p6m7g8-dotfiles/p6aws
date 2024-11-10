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
	    if p6_echo "$line" | grep -q "}"; then
              json=$(echo "$line" | sed 's/^[^{]*//')
	      echo "$json" | jq "."
            else
              echo "$line"
            fi
        done
}
