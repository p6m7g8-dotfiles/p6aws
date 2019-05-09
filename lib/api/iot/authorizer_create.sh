p6_aws_iot_authorizer_create() {
    local authorizer_name="$1"
    local authorizer_function_arn="$2"
    local token_key_name="$3"
    local token_signing_public_keys="$4"
    shift 4

    p6_log_or_run aws iot create-authorizer --authorizer-name $authorizer_name --authorizer-function-arn $authorizer_function_arn --token-key-name $token_key_name --token-signing-public-keys $token_signing_public_keys "$@"
}
