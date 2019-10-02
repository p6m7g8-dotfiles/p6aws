######################################################################
#<
#
# Function:
#	p6_aws_ses_custom_verification_email_template_get(template_name)
#
#  Args:
#	template_name - 
#
#>
######################################################################
p6_aws_ses_custom_verification_email_template_get() {
    local template_name="$1"
    shift 1

    p6_run_read_cmd aws ses get-custom-verification-email-template --template-name $template_name "$@"
}