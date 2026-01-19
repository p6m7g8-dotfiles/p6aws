#!/bin/sh

main() {

    . ../p6common/lib/_bootstrap.sh
    p6_bootstrap "../p6common"

    . lib/env/active.sh
    . lib/env/source.sh
    . lib/env/saved.sh
    . lib/util/env.sh
    . lib/cfg/api.sh
    . lib/cfg/debug.sh

    p6_test_setup "11"

    p6_test_start "p6_aws_cfg_realize"
    (
        p6_aws_cfg_clear

        conf="config"
        cat > "$conf" <<'CONF'
[profile test]
region = us-west-2
output = json
env = dev

[profile other]
region = us-east-1

CONF

        p6_aws_env_config_file_active "$conf" >/dev/null
        p6_aws_cfg_realize "test"

        p6_test_assert_eq "$(p6_aws_env_profile_active)" "test" "profile set"
        p6_test_assert_eq "$(p6_aws_env_default_profile_active)" "test" "default profile set"
        p6_test_assert_eq "$(p6_aws_env_region_active)" "us-west-2" "region set"
        p6_test_assert_eq "$(p6_aws_env_output_active)" "json" "output set"
        p6_test_assert_eq "$(p6_aws_env_env_active)" "dev" "env set"
    )
    p6_test_finish

    p6_test_start "p6_aws_cfg_show"
    (
        p6_aws_env_region_active "us-east-1" >/dev/null
        p6_aws_env_profile_active "demo" >/dev/null

        out=$(p6_aws_cfg_show)
        echo "$out" | grep -q "AWS_REGION=" >/dev/null
        p6_test_assert_eq "$?" "0" "shows AWS_REGION"
        echo "$out" | grep -q "AWS_PROFILE=" >/dev/null
        p6_test_assert_eq "$?" "0" "shows AWS_PROFILE"
    )
    p6_test_finish

    p6_test_start "p6_aws_cfg_reset_clear"
    (
        p6_aws_env_region_active "us-east-2" >/dev/null
        p6_aws_env_region_saved "keep" >/dev/null
        p6_aws_cfg_reset
        p6_test_assert_blank "$AWS_REGION" "reset clears AWS_REGION"
        p6_test_assert_eq "$AWS_PAGER" "" "reset clears AWS_PAGER"

        p6_aws_env_region_active "us-west-1" >/dev/null
        p6_aws_env_region_saved "saved" >/dev/null
        p6_aws_cfg_clear
        p6_test_assert_blank "$AWS_REGION" "clear clears non-saved"
        p6_test_assert_eq "$(p6_aws_env_region_saved)" "saved" "clear keeps saved"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
