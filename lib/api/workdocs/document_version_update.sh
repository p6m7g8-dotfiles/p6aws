p6_aws_workdocs_document_version_update() {
    local document_id="$1"
    local version_id="$2"
    shift 2

    p6_log_or_run aws workdocs update-document-version --document-id $document_id --version-id $version_id "$@"
}
