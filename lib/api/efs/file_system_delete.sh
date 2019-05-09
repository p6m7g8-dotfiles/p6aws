p6_aws_efs_file_system_delete() {
    local file_system_id="$1"
    shift 1

    p6_log_or_run aws efs delete-file-system --file-system-id $file_system_id "$@"
}
