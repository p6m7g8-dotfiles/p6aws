p6_aws_lambda_function_get() {
    local function_name="$1"
    shift 1

    p6_log_and_run aws lambda get-function --function-name $function_name "$@"
}
