p6_aws_lambda_layer_version_delete() {
    local layer_name="$1"
    local version_number="$2"
    shift 2

    p6_log_or_run aws lambda delete-layer-version --layer-name $layer_name --version-number $version_number "$@"
}
