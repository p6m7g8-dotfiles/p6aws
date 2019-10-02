######################################################################
#<
#
# Function:
#	p6_aws_ec2_vpc_attribute_describe(attribute, vpc_id)
#
#  Args:
#	attribute - 
#	vpc_id - 
#
#>
######################################################################
p6_aws_ec2_vpc_attribute_describe() {
    local attribute="$1"
    local vpc_id="$2"
    shift 2

    p6_run_read_cmd aws ec2 describe-vpc-attribute --attribute $attribute --vpc-id $vpc_id "$@"
}