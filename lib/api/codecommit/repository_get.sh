######################################################################
#<
#
# Function:
#	p6_aws_codecommit_repository_get(repository_name)
#
#  Args:
#	repository_name - 
#
#>
######################################################################
p6_aws_codecommit_repository_get() {
    local repository_name="$1"
    shift 1

    p6_run_read_cmd aws codecommit get-repository --repository-name $repository_name "$@"
}