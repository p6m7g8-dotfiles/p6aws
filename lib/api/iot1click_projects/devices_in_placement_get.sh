p6_aws_iot1click_projects_devices_in_placement_get() {
    local project_name="$1"
    local placement_name="$2"
    shift 2

    p6_log_and_run aws iot1click-projects get-devices-in-placement --project-name $project_name --placement-name $placement_name "$@"
}
