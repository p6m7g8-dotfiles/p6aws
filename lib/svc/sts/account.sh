# shellcheck shell=bash

######################################################################
#<
#
# Function: str account_id = p6_aws_svc_sts_account_id()
#
#  Returns:
#	str - account_id
#
#>
######################################################################
p6_aws_svc_sts_account_id() {

  local account_id=$(p6_aws_svc_sts_whoami |awk '/Account/{ print $2}' | sed -e 's,[,"],,g')

  p6_return_str "$account_id"
}

######################################################################
#<
#
# Function: str role_name = p6_aws_svc_sts_account_role_name()
#
#  Returns:
#	str - role_name
#
#  Environment:	 AWSR
#>
######################################################################
p6_aws_svc_sts_account_role_name() {

  local role_name=$(p6_aws_svc_sts_whoami |awk '/Arn/{ print $2}'  |sed -e 's,.*AWSReservedSSO_,,' -e 's,_.*,,')

  p6_return_str "$role_name"
}
