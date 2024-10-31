######################################################################
#<
#
# Function: p6_aws_svc_cloudfront_distributions_list()
#
#  Environment:	 P6_DFZ_SRC_P6M7G8_DOTFILES_DIR
#>
######################################################################
p6_aws_svc_cloudfront_distributions_list() {

    p6_aws_cli_cmd cloudfront list-distributions \
        --output text \
        --query "$(cat $P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6aws/lib/svc/cloudfront/q)" | \
        sort -k 3,3 | \
        column -t
}

