######################################################################
#<
#
# Function:
#	p6_aws_guardduty_findings_statistics_get(detector_id, finding_statistic_types)
#
#  Args:
#	detector_id - 
#	finding_statistic_types - 
#
#>
######################################################################
p6_aws_guardduty_findings_statistics_get() {
    local detector_id="$1"
    local finding_statistic_types="$2"
    shift 2

    p6_run_read_cmd aws guardduty get-findings-statistics --detector-id $detector_id --finding-statistic-types $finding_statistic_types "$@"
}