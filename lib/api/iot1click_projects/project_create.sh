p6_aws_iot1click_projects_project_create() {
    local project_name="$1"
    shift 1

    p6_log_or_run aws iot1click-projects create-project --project-name $project_name "$@"
}
