p6_aws_iot_scheduled_audit_describe() {
    local scheduled_audit_name="$1"
    shift 1

    p6_log_and_run aws iot describe-scheduled-audit --scheduled-audit-name $scheduled_audit_name "$@"
}
