p6_aws_gamelift_fleet_events_describe() {
    local fleet_id="$1"
    shift 1

    p6_log_and_run aws gamelift describe-fleet-events --fleet-id $fleet_id "$@"
}
