# shellcheck shell=bash
######################################################################
#<
#
# Function: stream  = p6_aws_svc_sts_decode_msg(encoded)
#
#  Args:
#	encoded -
#
#  Returns:
#	stream - 
#
#>
######################################################################
p6_aws_svc_sts_decode_msg() {
    local encoded="$1"

    p6_aws_cli_cmd sts decode-message | p6_json_eval -r '.DecodeMessage' | p6_json_eval .

    p6_return_stream
}
