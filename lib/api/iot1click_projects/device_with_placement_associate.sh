p6_aws_iot1click_projects_device_with_placement_associate() {
    local project_name="$1"
    local placement_name="$2"
    local device_id="$3"
    local device_template_name="$4"
    shift 4

    p6_log_or_run aws iot1click-projects associate-device-with-placement --project-name $project_name --placement-name $placement_name --device-id $device_id --device-template-name $device_template_name "$@"
}
