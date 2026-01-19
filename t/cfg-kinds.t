#!/bin/sh

main() {

    . ../p6common/lib/_bootstrap.sh
    p6_bootstrap "../p6common"

    . lib/env/active.sh
    . lib/env/source.sh
    . lib/env/saved.sh
    . lib/cfg/kinds.sh
    . lib/cfg/_kinds.sh
    . lib/cfg/api.sh
    . lib/cfg/debug.sh

    p6_test_setup "10"

    p6_test_start "p6_aws_cfg_kinds"
    (
        kinds=$(p6_aws_cfg_kinds)
        echo "$kinds" | grep -q "_active" >/dev/null
        p6_test_assert_eq "$?" "0" "has _active"
        echo "$kinds" | grep -q "_source" >/dev/null
        p6_test_assert_eq "$?" "0" "has _source"
        echo "$kinds" | grep -q "_saved" >/dev/null
        p6_test_assert_eq "$?" "0" "has _saved"
    )
    p6_test_finish

    p6_test_start "p6_aws_cfg_save_restore"
    (
        p6_aws_cfg_clear
        p6_aws_env_region_saved "keep" >/dev/null
        p6_aws_env_output_saved "json" >/dev/null
        p6_aws_env_region_active "one" >/dev/null

        p6_aws_cfg_save
        p6_test_assert_eq "$(p6_aws_env_region_saved)" "keep" "save preserves saved region"
        p6_test_assert_eq "$(p6_aws_env_output_saved)" "json" "save preserves saved output"

        p6_aws_env_region_active "two" >/dev/null
        p6_aws_cfg_restore_saved
        p6_test_assert_eq "$(p6_aws_env_region_active)" "keep" "restore_saved restores"

        p6_aws_env_region_source "orig" >/dev/null
        p6_aws_env_region_active "three" >/dev/null
        p6_aws_cfg_save_source
        p6_test_assert_eq "$(p6_aws_env_region_source)" "orig" "save_source preserves source"

        p6_aws_env_region_active "four" >/dev/null
        p6_aws_cfg_restore_source
        p6_test_assert_eq "$(p6_aws_env_region_active)" "orig" "restore_source restores"
    )
    p6_test_finish

    p6_test_start "p6_aws_cfg__copy_restore__from"
    (
        p6_aws_env_region_saved "keep" >/dev/null
        p6_aws_env_region_active "copy" >/dev/null
        p6_aws_cfg__copy "active" "saved"
        p6_test_assert_eq "$(p6_aws_env_region_saved)" "keep" "__copy preserves saved"

        p6_aws_env_region_active "clear" >/dev/null
        p6_aws_cfg_restore__from "saved"
        p6_test_assert_eq "$(p6_aws_env_region_active)" "keep" "restore__from restores"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
