# shellcheck shell=sh
######################################################################
#<
#
# Function: stream  = p6_aws_svc_ec2_sgs_list(vpc_id)
#
#  Args:
#	vpc_id -
#
#  Returns:
#	stream - 
#
#>
######################################################################
p6_aws_svc_ec2_sgs_list() {
    local vpc_id="$1"

    local tag_name=$(p6_aws_cli_jq_tag_name_get)

    p6_aws_cli_cmd ec2 describe-security-groups \
        --output text \
        --filters "Name=vpc-id,Values=$vpc_id" \
        --query "'SecurityGroups[].[GroupId, GroupName, $tag_name]'"

    p6_return_stream
}

######################################################################
#<
#
# Function: p6_aws_svc_ec2_sg_show(security_group_id_or_name, vpc_id)
#
#  Args:
#	security_group_id_or_name -
#	vpc_id -
#
#>
######################################################################
p6_aws_svc_ec2_sg_show() {
    local security_group_id_or_name="$1"
    local vpc_id="$2"

    local security_group_id
    local group_name

    case $security_group_id_or_name in
    sg-*) security_group_id=$security_group_id_or_name ;;
    *) group_name=$security_group_id_or_name ;;
    esac

    if [ -n "$group_name" ]; then
        security_group_id=$(p6_aws_svc_ec2_sg_id_from_tag_name "$group_name")
    fi

    sg_show.pl --security-group-id "$security_group_id"
}

######################################################################
#<
#
# Function: str sg_id = p6_aws_svc_ec2_sg_id_from_sg_tag(tag_name, vpc_id)
#
#  Args:
#	tag_name -
#	vpc_id -
#
#  Returns:
#	str - sg_id
#
#>
######################################################################
p6_aws_svc_ec2_sg_id_from_sg_tag() {
    local tag_name="$1"
    local vpc_id="$2"

    local sg_id=$(p6_aws_cli_cmd ec2 describe-security-groups \
        --output text \
        --filters "Name=tag:Name,Values=${tag_name}" "Name=vpc-id,Values=${vpc_id}" \
        --query "'SecurityGroups[0].GroupId'")

    p6_return_str "$sg_id"
}

######################################################################
#<
#
# Function: str sg_id = p6_aws_svc_ec2_sg_id_from_instance_id(instance_id)
#
#  Args:
#	instance_id -
#
#  Returns:
#	str - sg_id
#
#>
######################################################################
p6_aws_svc_ec2_sg_id_from_instance_id() {
    local instance_id="$1"

    local sg_id=$(p6_aws_cli_cmd ec2 describe-instances \
            --instance-ids "$instance_id" \
            --query "Reservations[0].Instances[0].SecurityGroups[0].GroupId" \
            --output text)

    p6_return_str "$sg_id"
}


######################################################################
#<
#
# Function: str sg_id = p6_aws_svc_ec2_sg_id_from_instance_tag(tag)
#
#  Args:
#	tag -
#
#  Returns:
#	str - sg_id
#
#>
######################################################################
p6_aws_svc_ec2_sg_id_from_instance_tag() {
    local tag="$1"

    local instance_id=$(p6_aws_svc_ec2_instance_id_from_name_tag "$tag")
    p6_aws_svc_ec2_sg_id_from_instance_id "$instance_id"

    p6_return_str "$sg_id"
}
