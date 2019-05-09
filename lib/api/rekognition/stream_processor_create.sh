p6_aws_rekognition_stream_processor_create() {
    local input="$1"
    local name="$2"
    local settings="$3"
    local role_arn="$4"
    local stream_processor_output="$5"
    shift 5

    p6_log_or_run aws rekognition create-stream-processor --input $input --name $name --settings $settings --role-arn $role_arn --stream-processor-output $stream_processor_output "$@"
}
