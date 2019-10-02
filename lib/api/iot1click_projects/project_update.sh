######################################################################
#<
#
# Function:
#	p6_aws_iot1click_projects_project_update(project_name)
#
#  Args:
#	project_name - 
#
#>
######################################################################
p6_aws_iot1click_projects_project_update() {
    local project_name="$1"
    shift 1

    p6_run_write_cmd aws iot1click-projects update-project --project-name $project_name "$@"
}