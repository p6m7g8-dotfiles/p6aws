p6_aws_ssm_document_describe() {
    local name="$1"
    shift 1

    p6_log_and_run aws ssm describe-document --name $name "$@"
}
