######################################################################
#<
#
# Function:
#	p6_aws_dynamodb_backup_describe(backup_arn)
#
#  Args:
#	backup_arn - 
#
#>
######################################################################
p6_aws_dynamodb_backup_describe() {
    local backup_arn="$1"
    shift 1

    p6_run_read_cmd aws dynamodb describe-backup --backup-arn $backup_arn "$@"
}