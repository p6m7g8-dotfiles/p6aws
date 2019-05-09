p6_aws_glue_dev_endpoint_create() {
    local endpoint_name="$1"
    local role_arn="$2"
    shift 2

    p6_log_or_run aws glue create-dev-endpoint --endpoint-name $endpoint_name --role-arn $role_arn "$@"
}
