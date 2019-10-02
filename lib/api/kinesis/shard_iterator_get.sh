######################################################################
#<
#
# Function:
#	p6_aws_kinesis_shard_iterator_get(stream_name, shard_id, shard_iterator_type)
#
#  Args:
#	stream_name - 
#	shard_id - 
#	shard_iterator_type - 
#
#>
######################################################################
p6_aws_kinesis_shard_iterator_get() {
    local stream_name="$1"
    local shard_id="$2"
    local shard_iterator_type="$3"
    shift 3

    p6_run_read_cmd aws kinesis get-shard-iterator --stream-name $stream_name --shard-id $shard_id --shard-iterator-type $shard_iterator_type "$@"
}