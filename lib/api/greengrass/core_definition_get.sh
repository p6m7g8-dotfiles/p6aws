p6_aws_greengrass_core_definition_get() {
    local core_definition_id="$1"
    shift 1

    p6_log_and_run aws greengrass get-core-definition --core-definition-id $core_definition_id "$@"
}
