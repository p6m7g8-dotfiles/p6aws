p6_aws_iot1click_projects_project_describe() {
    local project_name="$1"
    shift 1

    p6_log_and_run aws iot1click-projects describe-project --project-name $project_name "$@"
}
