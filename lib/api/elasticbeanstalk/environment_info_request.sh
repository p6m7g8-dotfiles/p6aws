p6_aws_elasticbeanstalk_environment_info_request() {
    local info_type="$1"
    shift 1

    p6_log_or_run aws elasticbeanstalk request-environment-info --info-type $info_type "$@"
}
