# shellcheck shell=sh
######################################################################
#<
#
# Function: p6_aws_svc_logs_trail_watch_jq(log_group_name)
#
#  Args:
#	log_group_name -
#
#>
######################################################################
p6_aws_svc_logs_trail_watch_jq() {
    local log_group_name="$1"

    p6_aws_svc_logs_watch "$log_group_name" |
        while read -r line; do
            json=$(echo "$line" | sed 's/^[^{]*//')
            echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
            echo "$json" | jq '.'
            echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
        done
}
