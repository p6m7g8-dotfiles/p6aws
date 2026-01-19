#!/bin/sh

main() {

    . ../p6common/lib/_bootstrap.sh
    p6_bootstrap "../p6common"

    . lib/env/active.sh
    . lib/env/source.sh
    . lib/env/saved.sh
    . lib/util/env.sh
    . lib/cfg/api.sh
    . lib/cli/shortcuts.sh
    . lib/cli/prompt.sh
    . lib/profile/debug.sh

    p6_test_setup "10"

    p6_test_start "p6_aws_cli_shortcuts_prefix"
    (
        p6_test_assert_eq "$(p6_aws_cli_shortcuts_prefix)" "p6_awsa" "prefix"
    )
    p6_test_finish

    p6_test_start "p6_aws_shortcuts_profile_to_shell_function_name"
    (
        p6_test_assert_eq "$(p6_aws_shortcuts_profile_to_shell_function_name 'a/b')" "a_b" "profile to function"
    )
    p6_test_finish

    p6_test_start "p6_aws_cli_shortcuts_generate_one"
    (
        func=$(p6_aws_cli_shortcuts_generate_one "dev")
        p6_test_assert_eq "$func" "p6_awsa_dev" "generate_one returns function"
        type "$func" >/dev/null 2>&1
        p6_test_assert_eq "$?" "1" "generate_one does not define function"
    )
    p6_test_finish

    p6_test_start "p6_aws_cli_shortcuts_generate_un"
    (
        p6_aws_shortcuts_prefix() {
            p6_aws_cli_shortcuts_prefix
        }

        p6_aws_cli_shortcuts_generate_one "alpha" >/dev/null
        p6_aws_cli_shortcuts_generate_one "beta" >/dev/null
        p6_aws_cli_shortcuts_generate_un "org"

        p6_test_assert_eq "$?" "0" "generate_un ok"
    )
    p6_test_finish

    p6_test_start "p6_aws_cli_shortcuts_on"
    (
        export HOME="$PWD"
        mkdir -p "$HOME/.aws"
        cat > "$HOME/.aws/config-org" <<'CONF'
[profile dev]
region = us-east-1

[profile prod]
region = us-west-2

CONF

        p6_aws_cli_shortcuts_on "org"

        type "p6_awsa_dev" >/dev/null 2>&1
        p6_test_assert_eq "$?" "1" "shortcuts_on does not define dev"
        type "p6_awsa_prod" >/dev/null 2>&1
        p6_test_assert_eq "$?" "1" "shortcuts_on does not define prod"
    )
    p6_test_finish

    p6_test_start "p6_aws_cfg_prompt_info"
    (
        p6_aws_env_org_active "acme" >/dev/null
        p6_aws_env_profile_active "dev" >/dev/null
        p6_aws_env_region_active "us-east-1" >/dev/null
        p6_aws_env_env_active "sandbox" >/dev/null
        p6_aws_env_vpc_id_active "vpc-1" >/dev/null
        p6_aws_env_eks_cluster_name_active "cluster" >/dev/null

        str=$(p6_aws_cfg_prompt_info "_active")
        echo "$str" | grep -q "org:acme" >/dev/null
        p6_test_assert_eq "$?" "0" "prompt has org"
        echo "$str" | grep -q "active:dev" >/dev/null
        p6_test_assert_eq "$?" "0" "prompt has profile"
        echo "$str" | grep -q "region:us-east-1" >/dev/null
        p6_test_assert_eq "$?" "0" "prompt has region"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
