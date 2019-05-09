p6_aws_lambda_layer_version_permission_add() {
    local layer_name="$1"
    local version_number="$2"
    local statement_id="$3"
    local action="$4"
    local principal="$5"
    shift 5

    p6_log_or_run aws lambda add-layer-version-permission --layer-name $layer_name --version-number $version_number --statement-id $statement_id --action $action --principal $principal "$@"
}
