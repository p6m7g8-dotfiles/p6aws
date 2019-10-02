######################################################################
#<
#
# Function:
#	p6_aws_mediaconnect_flow_output_update(flow_arn, output_arn)
#
#  Args:
#	flow_arn - 
#	output_arn - 
#
#>
######################################################################
p6_aws_mediaconnect_flow_output_update() {
    local flow_arn="$1"
    local output_arn="$2"
    shift 2

    p6_run_write_cmd aws mediaconnect update-flow-output --flow-arn $flow_arn --output-arn $output_arn "$@"
}