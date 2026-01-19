#!/bin/sh

main() {

    . ../p6common/lib/_bootstrap.sh
    p6_bootstrap "../p6common"

    ROOT=$(cd "$(dirname "$0")/.." && pwd)
    DOTFILES_DIR=$(cd "$ROOT/.." && pwd)

    . lib/svc/iam/policy.sh
    . lib/util/template.sh

    p6_test_setup "4"

    p6_test_start "p6_aws_svc_iam_policy_*"
    (
        tmp_root="$PWD/tmp"
        mkdir -p "$tmp_root/p6aws/tmpl/iam"

        cp "$DOTFILES_DIR/p6aws/tmpl/iam/saml.json" "$tmp_root/p6aws/tmpl/iam/saml.json"
        cp "$DOTFILES_DIR/p6aws/tmpl/iam/s3_cloudtrail.json" "$tmp_root/p6aws/tmpl/iam/s3_cloudtrail"
        cp "$DOTFILES_DIR/p6aws/tmpl/iam/cloudtrail.json" "$tmp_root/p6aws/tmpl/iam/cloudtrail"
        cp "$DOTFILES_DIR/p6aws/tmpl/iam/service.json" "$tmp_root/p6aws/tmpl/iam/service"

        export P6_DFZ_SRC_P6M7G8_DOTFILES_DIR="$tmp_root"

        out=$(p6_aws_svc_iam_policy_saml "123456789012" "Okta")
        echo "$out" | grep -q "arn:aws:iam::123456789012:saml-provider/Okta" >/dev/null
        p6_test_assert_eq "$?" "0" "saml policy substitutes"

        out=$(p6_aws_svc_iam_policy_s3_cloudtrail_write "trail-bucket" "123456789012")
        echo "$out" | grep -q "trail-bucket/AWSLogs/123456789012" >/dev/null
        p6_test_assert_eq "$?" "0" "s3_cloudtrail policy substitutes"

        out=$(p6_aws_svc_iam_policy_cloudtrail_write "arn:aws:logs:us-east-1:123:log-group")
        echo "$out" | grep -q "arn:aws:logs:us-east-1:123:log-group" >/dev/null
        p6_test_assert_eq "$?" "0" "cloudtrail policy substitutes"

        out=$(p6_aws_svc_iam_policy_service_write "lambda")
        echo "$out" | grep -q "lambda.amazonaws.com" >/dev/null
        p6_test_assert_eq "$?" "0" "service policy substitutes"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
