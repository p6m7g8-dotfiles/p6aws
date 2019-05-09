p6_aws_inspector_assessment_runs_describe() {
    local assessment_run_arns="$1"
    shift 1

    p6_log_and_run aws inspector describe-assessment-runs --assessment-run-arns $assessment_run_arns "$@"
}
