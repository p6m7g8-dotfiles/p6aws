p6_aws_support_attachments_to_set_add() {
    local attachments="$1"
    shift 1

    p6_log_or_run aws support add-attachments-to-set --attachments $attachments "$@"
}
