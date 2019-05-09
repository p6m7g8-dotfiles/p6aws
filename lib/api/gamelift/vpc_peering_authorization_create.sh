p6_aws_gamelift_vpc_peering_authorization_create() {
    local game_lift_aws_account_id="$1"
    local peer_vpc_id="$2"
    shift 2

    p6_log_or_run aws gamelift create-vpc-peering-authorization --game-lift-aws-account-id $game_lift_aws_account_id --peer-vpc-id $peer_vpc_id "$@"
}
