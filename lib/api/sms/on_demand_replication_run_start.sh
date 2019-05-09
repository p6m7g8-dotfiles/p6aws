p6_aws_sms_on_demand_replication_run_start() {
    local replication_job_id="$1"
    shift 1

    p6_log_or_run aws sms start-on-demand-replication-run --replication-job-id $replication_job_id "$@"
}
