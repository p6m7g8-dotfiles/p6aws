# shellcheck shell=bash

p6_aws_svc_glue_databases_arn_list() {

    p6_aws_cli_cmd glue get-databases --query "DatabaseList[].[Name]" --output text

    p6_return_void
}
