#!/bin/sh

main() {

    . ../p6common/lib/_bootstrap.sh
    p6_bootstrap "../p6common"

    . lib/cfg/vars.sh
    . lib/cfg/debug.sh

    p6_test_setup "14"

    p6_test_start "p6_aws_cfg_vars_min"
    (
        vars=$(p6_aws_cfg_vars_min)
        echo "$vars" | grep -q "AWS_ORG" >/dev/null
        p6_test_assert_eq "$?" "0" "min has AWS_ORG"
        echo "$vars" | grep -q "AWS_DEFAULT_PROFILE" >/dev/null
        p6_test_assert_eq "$?" "0" "min has AWS_DEFAULT_PROFILE"
        echo "$vars" | grep -q "AWS_DEFAULT_REGION" >/dev/null
        p6_test_assert_eq "$?" "0" "min has AWS_DEFAULT_REGION"
    )
    p6_test_finish

    p6_test_start "p6_aws_cfg_vars_secret"
    (
        vars=$(p6_aws_cfg_vars_secret)
        echo "$vars" | grep -q "AWS_SESSION_TOKEN" >/dev/null
        p6_test_assert_eq "$?" "0" "secret has AWS_SESSION_TOKEN"
        echo "$vars" | grep -q "AWS_ACCESS_KEY_ID" >/dev/null
        p6_test_assert_eq "$?" "0" "secret has AWS_ACCESS_KEY_ID"
        echo "$vars" | grep -q "AWS_SECRET_ACCESS_KEY" >/dev/null
        p6_test_assert_eq "$?" "0" "secret has AWS_SECRET_ACCESS_KEY"
    )
    p6_test_finish

    p6_test_start "p6_aws_cfg_vars_config"
    (
        vars=$(p6_aws_cfg_vars_config)
        echo "$vars" | grep -q "AWS_REGION" >/dev/null
        p6_test_assert_eq "$?" "0" "config has AWS_REGION"
        echo "$vars" | grep -q "AWS_OUTPUT" >/dev/null
        p6_test_assert_eq "$?" "0" "config has AWS_OUTPUT"
    )
    p6_test_finish

    p6_test_start "p6_aws_cfg_vars_sso"
    (
        vars=$(p6_aws_cfg_vars_sso)
        echo "$vars" | grep -q "AWS_DEFAULT_SSO_START_URL" >/dev/null
        p6_test_assert_eq "$?" "0" "sso has AWS_DEFAULT_SSO_START_URL"
        echo "$vars" | grep -q "AWS_SSO_ROLE_NAME" >/dev/null
        p6_test_assert_eq "$?" "0" "sso has AWS_SSO_ROLE_NAME"
    )
    p6_test_finish

    p6_test_start "p6_aws_cfg_vars"
    (
        vars=$(p6_aws_cfg_vars)
        echo "$vars" | grep -q "AWS_PROFILE" >/dev/null
        p6_test_assert_eq "$?" "0" "vars has AWS_PROFILE"
        echo "$vars" | grep -q "AWS_SECRET_ACCESS_KEY" >/dev/null
        p6_test_assert_eq "$?" "0" "vars has AWS_SECRET_ACCESS_KEY"
    )
    p6_test_finish

    p6_test_start "p6_aws_cfg_vars_filter_secret"
    (
        p6_aws_cfg_vars_filter_secret session_token
        p6_test_assert_eq "$?" "$P6_FALSE" "filter_secret session_token"
        p6_aws_cfg_vars_filter_secret region
        p6_test_assert_eq "$?" "$P6_TRUE" "filter_secret region"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
