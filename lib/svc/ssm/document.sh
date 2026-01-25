# shellcheck shell=sh

######################################################################
#<
#
# Function: p6_aws_svc_ssm_documents_list()
#
#>
######################################################################
p6_aws_svc_ssm_documents_list() {

    p6_aws_cli_cmd ssm list-documents \
        --output text \
        --query "'DocumentIdentifiers[].[Owner, DocumentVersion, DocumentType, SchemaVersion, DocumentFormat, Name, TargetType]'" |
        p6_filter_sort_by_key 3,6
}

######################################################################
#<
#
# Function: p6_aws_svc_ssm_documents_list_aws()
#
#>
######################################################################
p6_aws_svc_ssm_documents_list_aws() {

    p6_aws_svc_ssm_documents_list | p6_filter_row_select "Amazon"
}

######################################################################
#<
#
# Function: p6_aws_svc_ssm_documents_list_of()
#
#>
######################################################################
p6_aws_svc_ssm_documents_list_of() {

    p6_aws_svc_ssm_documents_list | p6_filter_row_select "$1"
}
