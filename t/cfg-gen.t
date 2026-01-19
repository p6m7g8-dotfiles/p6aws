#!/bin/sh

main() {

    . ../p6common/lib/_bootstrap.sh
    p6_bootstrap "../p6common"

    ROOT=$(cd "$(dirname "$0")/.." && pwd)
    DOTFILES_DIR=$(cd "$ROOT/.." && pwd)
    export P6_DFZ_SRC_P6M7G8_DOTFILES_DIR="$DOTFILES_DIR"

    . lib/cfg/_gen.sh
    . lib/cfg/kinds.sh
    . lib/cfg/vars.sh
    . lib/util/template.sh
    . lib/cfg/debug.sh

    p6_test_setup "11"

    p6_test_start "p6_aws_cfg__accessor"
    (
        code=$(p6_aws_cfg__accessor "_active" "region" "AWS_REGION")
        echo "$code" | grep -q "p6_aws_env_region_active" >/dev/null
        p6_test_assert_eq "$?" "0" "accessor has active function"
        echo "$code" | grep -q "AWS_REGION" >/dev/null
        p6_test_assert_eq "$?" "0" "accessor has env var"
    )
    p6_test_finish

    p6_test_start "p6_aws_cfg__taccessor"
    (
        tcode=$(p6_aws_cfg__taccessor "_saved" "region")
        echo "$tcode" | grep -q "p6_aws_env_region_saved" >/dev/null
        p6_test_assert_eq "$?" "0" "taccessor has saved function"
    )
    p6_test_finish

    p6_test_start "p6_aws_cfg__generate_kinds"
    (
        mkdir -p lib/env t
        p6_aws_cfg__generate_kinds "region" "AWS_REGION"

        p6_test_assert_file_exists "lib/env/active.sh" "active.sh created"
        p6_test_assert_file_exists "lib/env/source.sh" "source.sh created"
        p6_test_assert_file_exists "lib/env/saved.sh" "saved.sh created"
        p6_test_assert_file_exists "t/cfg-region-active.t" "active test created"
        p6_test_assert_file_exists "t/cfg-region-source.t" "source test created"
        p6_test_assert_file_exists "t/cfg-region-saved.t" "saved test created"
    )
    p6_test_finish

    p6_test_start "p6_aws_cfg__generate"
    (
        mkdir -p lib/env t
        p6_aws_cfg__generate

        p6_test_assert_file_exists "lib/env/active.sh" "active.sh generated"
        p6_test_assert_file_exists "t/cfg-region-active.t" "region active test generated"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
