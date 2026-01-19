#!/bin/sh

main() {

    . ../p6common/lib/_bootstrap.sh
    p6_bootstrap "../p6common"

    . lib/util/p6_return.sh

    p6_test_setup "7"

    p6_test_start "p6_return_aws_*"
    (
        p6_test_assert_eq "$(p6_return_aws_arn 'arn:aws:iam::123')" "arn:aws:iam::123" "return arn"
        p6_test_assert_eq "$(p6_return_aws_organization_id 'o-123')" "o-123" "return organization_id"
        p6_test_assert_eq "$(p6_return_aws_account_id '123456789012')" "123456789012" "return account_id"
        p6_test_assert_eq "$(p6_return_aws_subnet_id 'subnet-1')" "subnet-1" "return subnet_id"
        p6_test_assert_eq "$(p6_return_aws_resource_id 'res-1')" "res-1" "return resource_id"
        p6_test_assert_eq "$(p6_return_aws_logical_id 'logical-1')" "logical-1" "return logical_id"
        p6_test_assert_eq "$(p6_return_aws_profile 'dev')" "dev" "return profile"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
