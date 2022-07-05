# shellcheck shell=bash

p6_aws_svc_glue_crawlers_arn_list() {

    local dir=$(p6_transient_create "aws-crawlers")
    local next_token=START

    while ! p6_string_eq "$next_token" "null"; do
        p6_aws_cli_cmd glue list-crawlers >$dir/crawlers.json
        next_token=$(cat $dir/crawlers.json | jq -r ".NextToken")
        p6_file_display "$dir/crawlers.json" | jq -r ".CrawlerNames"
    done | grep -v "\[" |
        grep -v "\]" |
        sed -e 's,",,g' -e 's/,//g'

    p6_return_void
}
