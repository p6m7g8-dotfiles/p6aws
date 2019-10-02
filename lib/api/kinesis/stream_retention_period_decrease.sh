######################################################################
#<
#
# Function:
#	p6_aws_kinesis_stream_retention_period_decrease(stream_name, retention_period_hours)
#
#  Args:
#	stream_name - 
#	retention_period_hours - 
#
#>
######################################################################
p6_aws_kinesis_stream_retention_period_decrease() {
    local stream_name="$1"
    local retention_period_hours="$2"
    shift 2

    p6_run_write_cmd aws kinesis decrease-stream-retention-period --stream-name $stream_name --retention-period-hours $retention_period_hours "$@"
}