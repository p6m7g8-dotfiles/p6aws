p6_aws_sts_federation_token_get() {
    local name="$1"
    shift 1

    p6_log_and_run aws sts get-federation-token --name $name "$@"
}
