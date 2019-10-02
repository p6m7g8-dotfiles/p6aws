######################################################################
#<
#
# Function:
#	p6_aws_logs_log_stream_create(log_group_name, log_stream_name)
#
#  Args:
#	log_group_name - 
#	log_stream_name - 
#
#>
######################################################################
p6_aws_logs_log_stream_create() {
    local log_group_name="$1"
    local log_stream_name="$2"
    shift 2

    p6_run_write_cmd aws logs create-log-stream --log-group-name $log_group_name --log-stream-name $log_stream_name "$@"
}