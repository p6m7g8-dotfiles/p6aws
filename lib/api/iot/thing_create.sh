p6_aws_iot_thing_create() {
    local thing_name="$1"
    shift 1

    p6_log_or_run aws iot create-thing --thing-name $thing_name "$@"
}
