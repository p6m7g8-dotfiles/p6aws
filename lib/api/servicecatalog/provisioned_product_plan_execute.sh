p6_aws_servicecatalog_provisioned_product_plan_execute() {
    local plan_id="$1"
    shift 1

    p6_log_or_run aws servicecatalog execute-provisioned-product-plan --plan-id $plan_id "$@"
}
