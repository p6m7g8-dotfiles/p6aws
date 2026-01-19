#!/bin/sh

main() {

    . ../p6common/lib/_bootstrap.sh
    p6_bootstrap "../p6common"

    . lib/util/env.sh
    . lib/env/active.sh

    p6_test_setup "10"

    p6_test_start "p6_aws_util_env"
    (
        p6_aws_util_env_output "text"
        p6_test_assert_eq "$AWS_OUTPUT" "text" "util_env_output sets AWS_OUTPUT"

        P6_AWS_ORG="org1"
        p6_aws_util_env_org
        p6_test_assert_eq "$AWS_ORG" "org1" "util_env_org sets AWS_ORG"

        p6_aws_util_env_profile "demo"
        p6_test_assert_eq "$AWS_DEFAULT_PROFILE" "demo" "util_env_profile sets default"
        p6_test_assert_eq "$AWS_PROFILE" "demo" "util_env_profile sets profile"

        p6_aws_util_env_region "us-west-1"
        p6_test_assert_eq "$AWS_DEFAULT_REGION" "us-west-1" "util_env_region sets default"
        p6_test_assert_eq "$AWS_REGION" "us-west-1" "util_env_region sets region"

        export HOME="$PWD"
        p6_aws_util_env_config_file "acme" >/dev/null
        p6_test_assert_eq "$AWS_CONFIG_FILE" "$HOME/.aws/config-acme" "util_env_config_file sets path"
        p6_test_assert_eq "$(p6_aws_util_env_config_file "acme")" "$HOME/.aws/config-acme" "util_env_config_file returns path"

        p6_aws_util_env_shared_credentials_file "acme" >/dev/null
        p6_test_assert_eq "$AWS_SHARED_CREDENTIALS_FILE" "$HOME/.aws/credentials-acme" "util_env_shared_credentials_file sets path"
        p6_test_assert_eq "$(p6_aws_util_env_shared_credentials_file "acme")" "$HOME/.aws/credentials-acme" "util_env_shared_credentials_file returns path"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
