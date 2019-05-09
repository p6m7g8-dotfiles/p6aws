p6_aws_swf_workflow_execution_start() {
    local domain="$1"
    local workflow_id="$2"
    local workflow_type="$3"
    shift 3

    p6_log_or_run aws swf start-workflow-execution --domain $domain --workflow-id $workflow_id --workflow-type $workflow_type "$@"
}
