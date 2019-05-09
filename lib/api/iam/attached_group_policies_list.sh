p6_aws_iam_attached_group_policies_list() {
    local group_name="$1"
    shift 1

    p6_log_and_run aws iam list-attached-group-policies --group-name $group_name "$@"
}
