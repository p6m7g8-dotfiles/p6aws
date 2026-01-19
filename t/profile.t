#!/bin/sh

main() {

    . ../p6common/lib/_bootstrap.sh
    p6_bootstrap "../p6common"

    ROOT=$(cd "$(dirname "$0")/.." && pwd)
    DOTFILES_DIR=$(cd "$ROOT/.." && pwd)
    export P6_DFZ_SRC_P6M7G8_DOTFILES_DIR="$DOTFILES_DIR"

    . lib/util/debug.sh
    . lib/util/template.sh
    . lib/profile/config.sh
    . lib/profile/cred.sh
    . lib/profile/debug.sh
    . lib/env/active.sh

    p6_test_setup "6"

    p6_test_start "p6_aws_profile_config_add_list"
    (
        conf="config"
        p6_aws_profile_config_add "$conf" "dev"

        p6_test_assert_file_exists "$conf" "config file created"
        grep -q "\[profile dev\]" "$conf" >/dev/null
        p6_test_assert_eq "$?" "0" "config has profile"

        p6_aws_env_config_file_active "$conf" >/dev/null
        profiles=$(p6_aws_profile_config_list)
        echo "$profiles" | grep -q "dev" >/dev/null
        p6_test_assert_eq "$?" "0" "config list returns profile"
    )
    p6_test_finish

    p6_test_start "p6_aws_profile_cred_add"
    (
        cred="creds"
        p6_aws_profile_cred_add "$cred" "dev" "AKIA" "SECRET" "TOKEN" "EXP"

        p6_test_assert_file_exists "$cred" "creds file created"
        grep -q "\[dev\]" "$cred" >/dev/null
        p6_test_assert_eq "$?" "0" "creds has profile"
        grep -q "aws_access_key_id = AKIA" "$cred" >/dev/null
        p6_test_assert_eq "$?" "0" "creds has access key"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
