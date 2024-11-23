# shellcheck shell=bash

######################################################################
#<
#
# Function: p6_aws_svc_ec2_connect()
#
#  Environment:	 HOME
#>
######################################################################
p6_aws_svc_ec2_connect() {
  local tag="$1"

  local instance_id=$(p6_aws_svc_ec2_instance_id_from_name_tag "$tag")
  p6_aws_svc_ec2_instance_connect "$instance_id" "$HOME/.ssh/$tag.pem"

  p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_ec2_instance_connect(instance_id, key)
#
#  Args:
#	instance_id -
#	key -
#
#>
######################################################################
p6_aws_svc_ec2_instance_connect() {
  local instance_id="$1"
  local key="$2"

  p6_aws_cli_cmd ec2-instance-connect ssh --instance-id $instance_id --private-key-file $key

  p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_ec2_instance_connect_ssh_public_key_send(instance_id, user, key, az)
#
#  Args:
#	instance_id -
#	user -
#	key -
#	az -
#
#>
######################################################################
p6_aws_svc_ec2_instance_connect_ssh_public_key_send() {
    local instance_id="$1"
    local user="$2"
    local key="$3"
    local az="$4"

    p6_aws_cli_cmd ec2-instance-connect send-ssh-public-key \
        --instance-id "$instance_id" \
        --instance-os-user "$user" \
        --ssh-public-key "$key" \
        --availability-zone "$az"

    p6_return_void
}
