######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_business_report_schedule_delete(schedule_arn)
#
#  Args:
#	schedule_arn - 
#
#>
######################################################################
p6_aws_alexaforbusiness_business_report_schedule_delete() {
    local schedule_arn="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness delete-business-report-schedule --schedule-arn $schedule_arn "$@"
}