#!/bin/sh

main() {

    . ../p6common/lib/_bootstrap.sh
    p6_bootstrap "../p6common"

    . lib/util/debug.sh
    . lib/cfg/debug.sh
    . lib/cli/debug.sh
    . lib/profile/debug.sh
    . lib/svc/sts/debug.sh

    p6_test_setup "5"

    p6_test_start "p6_aws__debug"
    (
        p6_aws__debug "ping"
        p6_test_assert_eq "$?" "0" "p6_aws__debug ok"
    )
    p6_test_finish

    p6_test_start "p6_aws_cfg__debug"
    (
        p6_aws_cfg__debug "ping"
        p6_test_assert_eq "$?" "0" "p6_aws_cfg__debug ok"
    )
    p6_test_finish

    p6_test_start "p6_aws_cli__debug"
    (
        p6_aws_cli__debug "ping"
        p6_test_assert_eq "$?" "0" "p6_aws_cli__debug ok"
    )
    p6_test_finish

    p6_test_start "p6_aws_profile__debug"
    (
        p6_aws_profile__debug "ping"
        p6_test_assert_eq "$?" "0" "p6_aws_profile__debug ok"
    )
    p6_test_finish

    p6_test_start "p6_aws_sts__debug"
    (
        p6_aws_sts__debug "ping"
        p6_test_assert_eq "$?" "0" "p6_aws_sts__debug ok"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
