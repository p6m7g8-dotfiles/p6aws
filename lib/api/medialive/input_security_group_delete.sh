p6_aws_medialive_input_security_group_delete() {
    local input_security_group_id="$1"
    shift 1

    p6_log_or_run aws medialive delete-input-security-group --input-security-group-id $input_security_group_id "$@"
}
