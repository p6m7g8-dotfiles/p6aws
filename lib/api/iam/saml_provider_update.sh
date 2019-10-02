######################################################################
#<
#
# Function:
#	p6_aws_iam_saml_provider_update(saml_metadata_document, saml_provider_arn)
#
#  Args:
#	saml_metadata_document - 
#	saml_provider_arn - 
#
#>
######################################################################
p6_aws_iam_saml_provider_update() {
    local saml_metadata_document="$1"
    local saml_provider_arn="$2"
    shift 2

    p6_run_write_cmd aws iam update-saml-provider --saml-metadata-document $saml_metadata_document --saml-provider-arn $saml_provider_arn "$@"
}