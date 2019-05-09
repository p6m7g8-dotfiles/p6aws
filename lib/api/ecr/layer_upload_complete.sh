p6_aws_ecr_layer_upload_complete() {
    local repository_name="$1"
    local upload_id="$2"
    local layer_digests="$3"
    shift 3

    p6_log_or_run aws ecr complete-layer-upload --repository-name $repository_name --upload-id $upload_id --layer-digests $layer_digests "$@"
}
