######################################################################
#<
#
# Function:
#	p6_aws_robomaker_robot_application_version_create(application)
#
#  Args:
#	application - 
#
#>
######################################################################
p6_aws_robomaker_robot_application_version_create() {
    local application="$1"
    shift 1

    p6_run_write_cmd aws robomaker create-robot-application-version --application $application "$@"
}