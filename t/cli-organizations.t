#!/bin/sh

main() {

    . ../p6common/lib/_bootstrap.sh
    p6_bootstrap "../p6common"

    . lib/env/active.sh
    . lib/cfg/api.sh
    . lib/cli/organizations.sh

    p6_test_setup "2"

    p6_test_start "p6_aws_cli_organization_on_off"
    (
        p6_aws_cli_shortcuts_on() { :; }
        p6_aws_cli_shortcuts_off() { :; }

        p6_aws_cli_organization_on "acme"
        p6_test_assert_eq "$AWS_ORG" "acme" "organization_on sets AWS_ORG"

        p6_aws_cli_organization_off "acme"
        p6_test_assert_blank "$AWS_ORG" "organization_off clears AWS_ORG"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
