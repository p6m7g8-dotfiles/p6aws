# shellcheck shell=bash

p6_aws_svc_glue_tables_arn_list() {

    p6_aws_cli_cmd glue search-tables --query "DatabaseList[].[Name]" --output text

    p6_return_void
}
