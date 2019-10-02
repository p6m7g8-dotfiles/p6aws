######################################################################
#<
#
# Function:
#	p6_aws_pinpoint_email_configuration_set_sending_options_put(configuration_set_name)
#
#  Args:
#	configuration_set_name - 
#
#>
######################################################################
p6_aws_pinpoint_email_configuration_set_sending_options_put() {
    local configuration_set_name="$1"
    shift 1

    p6_run_write_cmd aws pinpoint-email put-configuration-set-sending-options --configuration-set-name $configuration_set_name "$@"
}