p6_aws_rekognition_faces_index() {
    local collection_id="$1"
    shift 1

    p6_log_or_run aws rekognition index-faces --collection-id $collection_id "$@"
}
