p6_aws_workdocs_folder_path_get() {
    local folder_id="$1"
    shift 1

    p6_log_and_run aws workdocs get-folder-path --folder-id $folder_id "$@"
}
