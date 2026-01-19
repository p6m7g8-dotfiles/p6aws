#!/bin/sh

main() {

    . ../p6common/lib/_bootstrap.sh
    p6_bootstrap "../p6common"

    ROOT=$(cd "$(dirname "$0")/.." && pwd)
    DOTFILES_DIR=$(cd "$ROOT/.." && pwd)
    export P6_DFZ_SRC_P6M7G8_DOTFILES_DIR="$DOTFILES_DIR"

    . lib/util/template.sh

    p6_test_setup "2"

    p6_test_start "p6_aws_template_process"
    (
        out=$(p6_aws_template_process "cfg/accessor.tmpl" "FUNC=foo" "VAR=BAR")
        echo "$out" | grep -q "p6_aws_env_foo" >/dev/null
        p6_test_assert_eq "$?" "0" "template replaces FUNC"
        echo "$out" | grep -q "BAR" >/dev/null
        p6_test_assert_eq "$?" "0" "template replaces VAR"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
