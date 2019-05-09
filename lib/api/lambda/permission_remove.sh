p6_aws_lambda_permission_remove() {
    local function_name="$1"
    local statement_id="$2"
    shift 2

    p6_log_or_run aws lambda remove-permission --function-name $function_name --statement-id $statement_id "$@"
}
