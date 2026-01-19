#!/bin/sh

main() {

    . ../p6common/lib/_bootstrap.sh
    p6_bootstrap "../p6common"

    ROOT=$(cd "$(dirname "$0")/.." && pwd)
    DOTFILES_DIR=$(cd "$ROOT/.." && pwd)
    export P6_DFZ_SRC_P6M7G8_DOTFILES_DIR="$DOTFILES_DIR"

    . lib/env/active.sh
    . lib/env/source.sh
    . lib/env/saved.sh
    . lib/util/env.sh
    . lib/util/template.sh
    . lib/cfg/kinds.sh
    . lib/cfg/_kinds.sh
    . lib/profile/config.sh
    . lib/profile/cred.sh
    . lib/profile/debug.sh
    . lib/svc/sts/role.sh
    . lib/svc/sts/prompt.sh
    . lib/svc/organizations/sts.sh

    p6_test_setup "11"

    p6_test_start "p6_aws_svc_sts_role_credentials_on"
    (
        export HOME="$PWD"
        mkdir -p "$HOME/.aws"

        p6_aws_env_org_active "acme" >/dev/null
        p6_aws_env_region_source "us-east-1" >/dev/null

        json='{"Credentials":{"AccessKeyId":"AKIA123","SecretAccessKey":"SECRET","SessionToken":"TOKEN","Expiration":"2024-01-01T00:00:00Z"}}'
        p6_aws_svc_sts_role_credentials_on "$json" "role-arn" "session" "sts"

        p6_test_assert_file_exists "$HOME/.aws/config-acme-sts" "config created"
        p6_test_assert_file_exists "$HOME/.aws/credentials-acme-sts" "creds created"
        p6_test_assert_eq "$AWS_PROFILE" "role-arn" "profile set"
        p6_test_assert_eq "$AWS_DEFAULT_PROFILE" "role-arn" "default profile set"
        p6_test_assert_eq "$AWS_REGION" "us-east-1" "region set"
    )
    p6_test_finish

    p6_test_start "p6_aws_svc_sts_role_assume_un"
    (
        p6_aws_env_region_active "active" >/dev/null
        p6_aws_env_region_source "source" >/dev/null
        p6_aws_svc_sts_role_assume_un
        p6_test_assert_eq "$(p6_aws_env_region_active)" "active" "assume_un keeps active"
    )
    p6_test_finish

    p6_test_start "p6_aws_sts_prompt_info"
    (
        touch creds
        out=$(p6_aws_sts_prompt_info "creds")
        p6_test_assert_not_blank "$out" "prompt info present"
    )
    p6_test_finish

    p6_test_start "p6_aws_svc_organizations_sts_local_su_un"
    (
        p6_aws_svc_organizations_sts_local_su_un
        p6_test_assert_eq "$?" "0" "local_su_un ok"
    )
    p6_test_finish

    p6_test_start "p6_aws_svc_organizations_sts_github_su_un"
    (
        export AWS_ACCESS_KEY_ID="CURR"
        export AWS_SECRET_ACCESS_KEY="CURR_SECRET"
        export AWS_SESSION_TOKEN="CURR_TOKEN"
        export PRIOR_AWS_ACCESS_KEY_ID="PRIOR"
        export PRIOR_AWS_SECRET_ACCESS_KEY="PRIOR_SECRET"
        export PRIOR_AWS_SESSION_TOKEN="PRIOR_TOKEN"

        p6_aws_svc_organizations_sts_github_su_un
        p6_test_assert_eq "$AWS_ACCESS_KEY_ID" "PRIOR" "github_su_un restores access key"
        p6_test_assert_blank "$PRIOR_AWS_ACCESS_KEY_ID" "github_su_un clears prior"
    )
    p6_test_finish

    p6_test_start "p6_aws_svc_organizations_sts_su_un"
    (
        export GITHUB_ACTIONS="true"
        export AWS_ACCESS_KEY_ID="CURR2"
        export AWS_SECRET_ACCESS_KEY="CURR2_SECRET"
        export AWS_SESSION_TOKEN="CURR2_TOKEN"
        export PRIOR_AWS_ACCESS_KEY_ID="PRIOR2"
        export PRIOR_AWS_SECRET_ACCESS_KEY="PRIOR2_SECRET"
        export PRIOR_AWS_SESSION_TOKEN="PRIOR2_TOKEN"

        p6_aws_svc_organizations_sts_su_un
        p6_test_assert_eq "$AWS_ACCESS_KEY_ID" "PRIOR2" "su_un restores access key"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
