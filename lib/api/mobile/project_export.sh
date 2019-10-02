######################################################################
#<
#
# Function:
#	p6_aws_mobile_project_export(project_id)
#
#  Args:
#	project_id - 
#
#>
######################################################################
p6_aws_mobile_project_export() {
    local project_id="$1"
    shift 1

    p6_run_write_cmd aws mobile export-project --project-id $project_id "$@"
}