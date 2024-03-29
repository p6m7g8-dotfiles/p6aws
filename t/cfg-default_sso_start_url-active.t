#!/bin/sh

main() {

    . ../p6common/lib/_bootstrap.sh
    p6_bootstrap "../p6common"

    . lib/env/active.sh
    . lib/env/source.sh
    . lib/env/saved.sh
    . lib/cfg/api.sh

    p6_test_setup "9"

    p6_test_start "env/p6_aws_env_default_sso_start_url_active"
    (
	p6_aws_cfg_clear

        p6_test_run "p6_aws_env_default_sso_start_url_active val"
        p6_test_assert_run_ok "p6_aws_env_default_sso_start_url_active returns blank"

        p6_test_run "p6_aws_env_default_sso_start_url_active"
        p6_test_assert_blank "$(p6_test_run_stderr)" "no stderr"
        p6_test_assert_eq "$(p6_test_run_stdout)" "val" "old val returned"

        p6_test_run "p6_aws_env_default_sso_start_url_active new"
        p6_test_assert_blank "$(p6_test_run_stderr)" "no stderr"
        p6_test_assert_eq "$(p6_test_run_stdout)" "val" "old val returned"

        p6_test_run "p6_aws_env_default_sso_start_url_active"
        p6_test_assert_blank "$(p6_test_run_stderr)" "no stderr"
        p6_test_assert_eq "$(p6_test_run_stdout)" "new" "old val returned"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
