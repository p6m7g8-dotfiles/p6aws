######################################################################
#<
#
# Function:
#	p6_aws_servicecatalog_product_from_portfolio_disassociate(product_id, portfolio_id)
#
#  Args:
#	product_id - 
#	portfolio_id - 
#
#>
######################################################################
p6_aws_servicecatalog_product_from_portfolio_disassociate() {
    local product_id="$1"
    local portfolio_id="$2"
    shift 2

    p6_run_write_cmd aws servicecatalog disassociate-product-from-portfolio --product-id $product_id --portfolio-id $portfolio_id "$@"
}