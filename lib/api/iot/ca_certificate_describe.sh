p6_aws_iot_ca_certificate_describe() {
    local certificate_id="$1"
    shift 1

    p6_log_and_run aws iot describe-ca-certificate --certificate-id $certificate_id "$@"
}
