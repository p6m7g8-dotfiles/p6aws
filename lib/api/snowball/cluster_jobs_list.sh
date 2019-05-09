p6_aws_snowball_cluster_jobs_list() {
    local cluster_id="$1"
    shift 1

    p6_log_and_run aws snowball list-cluster-jobs --cluster-id $cluster_id "$@"
}
