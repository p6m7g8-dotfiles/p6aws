p6_aws_ec2_product_instance_confirm() {
    local instance_id="$1"
    local product_code="$2"
    shift 2

    p6_log_or_run aws ec2 confirm-product-instance --instance-id $instance_id --product-code $product_code "$@"
}
