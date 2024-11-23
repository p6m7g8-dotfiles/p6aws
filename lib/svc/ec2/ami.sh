# shellcheck shell=sh
######################################################################
#<
#
# Function: str user = p6_aws_svc_ec2_user_from_ami_name(ami_name)
#
#  Args:
#	ami_name -
#
#  Returns:
#	str - user
#
#  Environment:	 RHEL USER WIN
#>
######################################################################
p6_aws_svc_ec2_user_from_ami_name() {
	local ami_name="$1"

	local user
	case $ami_name in
	*WIN*) user=lanadmin ;;
	*RHEL* | *AmaonLinux* | *amzn*-ami* | *FreeBSD*) user=ec2-user ;;
	*Ubuntu*) user=ubuntu ;;
	*core*) user=core ;;
	*) user=$USER ;;
	esac

	p6_return_str "$user"
}

######################################################################
#<
#
# Function: str ami_id = p6_aws_svc_ec2_ami_id_from_instance_id(instance_id)
#
#  Args:
#	instance_id -
#
#  Returns:
#	str - ami_id
#
#>
######################################################################
p6_aws_svc_ec2_ami_id_from_instance_id() {
	local instance_id="$1"

	local ami_id=$(
		p6_aws_cli_cmd ec2 describe-instances \
			--output text \
			--instance-ids "$instance_id" \
			--query "'Reservations[0].Instances[0].ImageId'")

	p6_return_str "$ami_id"
}

######################################################################
#<
#
# Function: str ami_name = p6_aws_svc_ec2_ami_name_from_instance_id(instance_id)
#
#  Args:
#	instance_id -
#
#  Returns:
#	str - ami_name
#
#>
######################################################################
p6_aws_svc_ec2_ami_name_from_instance_id() {
	local instance_id="$1"

	local ami_id=$(p6_aws_svc_ec2_ami_id_from_instance_id "$instance_id")

	local ami_name=$(p6_aws_cli_cmd ec2 describe-images \
			--output text \
			--image-ids "$ami_id" \
			--query "'Images[0].Name'")

	p6_return_str "$ami_name"
}

######################################################################
#<
#
# Function: stream  = p6_aws_svc_ec2_amis_mine_list()
#
#  Returns:
#	stream - 
#
#>
######################################################################
p6_aws_svc_ec2_amis_mine_list() {

	local tag_name=$(p6_aws_cli_jq_tag_name_get)

	p6_aws_cli_cmd ec2 describe-images \
		--output text \
		--owners self \
		--query "'Images[].[CreationDate, ImageId, Public, RootDeviceName, RootDeviceType, VirtualizationType, ImageLocation, $tag_name]'" |
		sort -k 2

	p6_return_stream
}

######################################################################
#<
#
# Function: stream  = p6_aws_svc_ec2_amis_list()
#
#  Returns:
#	stream - 
#
#>
######################################################################
p6_aws_svc_ec2_amis_list() {

	local tag_name=$(p6_aws_cli_jq_tag_name_get)

	p6_aws_cli_cmd ec2 describe-images \
		--output text \
		--query "'Images[].[CreationDate, ImageId, Public, RootDeviceName, RootDeviceType, VirtualizationType, ImageLocation, $tag_name]'" |
		sort -k 2

    p6_return_stream
}

######################################################################
#<
#
# Function: str ami_id = p6_aws_svc_ec2_ami_find_id(glob)
#
#  Args:
#	glob -
#
#  Returns:
#	str - ami_id
#
#>
######################################################################
p6_aws_svc_ec2_ami_find_id() {
	local glob="$1"

	local ami_id=$(aws ec2 describe-images \
		--output text \
		--filters "Name=name,Values=$glob" \
		--query "Images[*].[Name,ImageId]" |
		sort -k 1,1 |
		tail -1 |
		sed -e 's,.*ami-,ami-,'
	)

	p6_return_str "$ami_id"
}

######################################################################
#<
#
# Function: str ami_id = p6_aws_svc_ec2_ami_find_freebsd_15_current()
#
#  Returns:
#	str - ami_id
#
#  Environment:	 BSD _15_
#>
######################################################################
p6_aws_svc_ec2_ami_find_freebsd_15_current() {

	local ami_id=$(p6_aws_svc_ec2_ami_find_id "*FreeBSD 15.0-CURRENT-arm64-* small UFS")

	p6_return_str "$ami_id"
}

######################################################################
#<
#
# Function: str ami_id = p6_aws_svc_ec2_amis_amazon2_latest()
#
#  Returns:
#	str - ami_id
#
#>
######################################################################
p6_aws_svc_ec2_amis_amazon2_latest() {

	local ami_id=$(p6_aws_cli_cmd ec2 describe-images \
		--output text \
		--query "'Images[].[ImageId]'" \
		--filters "'Name=name,Values=amzn2-ami-hvm-*gp2'" |
		sort -r -k 1,1 |
		tail -1)

	p6_return_str "$ami_id"
}

######################################################################
#<
#
# Function: stream  = p6_aws_svc_ec2_ami_show(ami_id)
#
#  Args:
#	ami_id -
#
#  Returns:
#	stream - 
#
#>
######################################################################
p6_aws_svc_ec2_ami_show() {
	local ami_id="$1"

	p6_aws_cli_cmd ec2 describe-images \
		--image-ids "$ami_id" \
		--query "'Images[0]'"

    p6_return_stream
}
