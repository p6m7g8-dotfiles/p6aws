######################################################################
#<
#
# Function:
#	p6_aws_inspector_exclusions_preview_create(assessment_template_arn)
#
#  Args:
#	assessment_template_arn - 
#
#>
######################################################################
p6_aws_inspector_exclusions_preview_create() {
    local assessment_template_arn="$1"
    shift 1

    p6_run_write_cmd aws inspector create-exclusions-preview --assessment-template-arn $assessment_template_arn "$@"
}