p6_aws_iot_data_thing_shadow_get() {
    local thing_name="$1"
    shift 1

    p6_log_and_run aws iot-data get-thing-shadow --thing-name $thing_name "$@"
}
