######################################################################
#<
#
# Function:
#	p6_aws_ec2_security_group_ingress_revoke()
#
#>
######################################################################
p6_aws_ec2_security_group_ingress_revoke() {

    p6_run_write_cmd aws ec2 revoke-security-group-ingress "$@"
}