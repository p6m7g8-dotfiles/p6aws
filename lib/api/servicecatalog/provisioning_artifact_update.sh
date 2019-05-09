p6_aws_servicecatalog_provisioning_artifact_update() {
    local product_id="$1"
    local provisioning_artifact_id="$2"
    shift 2

    p6_log_or_run aws servicecatalog update-provisioning-artifact --product-id $product_id --provisioning-artifact-id $provisioning_artifact_id "$@"
}
