#!/bin/sh

main() {

    . ../p6common/lib/_bootstrap.sh
    p6_bootstrap "../p6common"

    DOTFILES_DIR=$(cd "$(dirname "$0")/../.." && pwd)

    . lib/cli/cli.sh

    p6_test_setup "3"

    p6_test_start "p6_aws_cli_jq_tag_name_get"
    (
        val=$(p6_aws_cli_jq_tag_name_get)
        if p6_string_eq "$val" "Tags[?Key==\`Name\`].Value | [0]"; then
            p6_test_ok "jq tag name"
        else
            p6_test_not_ok "jq tag name"
            p6_test_diagnostic "expected [Tags[?Key==\`Name\`].Value | [0]], got [$val]"
        fi
    )
    p6_test_finish

    p6_test_start "p6_aws_cli_qload"
    (
        p6_test_run "p6_aws_cli_qload '$DOTFILES_DIR'"
        p6_test_assert_run_rc "qload returns 1" "1"
    )
    p6_test_finish

    p6_test_start "p6_aws_cli_cmd"
    (
        p6_test_tap_skip "p6_aws_cli_cmd" "network"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
