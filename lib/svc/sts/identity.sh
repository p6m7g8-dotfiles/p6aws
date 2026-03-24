# shellcheck shell=bash
######################################################################
#<
#
# Function: stream  = p6_aws_svc_sts_whoami()
#
#  Returns:
#	stream - 
#
#>
######################################################################
p6_aws_svc_sts_whoami() {

    p6_aws_cli_cmd sts get-caller-identity

    p6_return_stream
}

######################################################################
#<
#
# Function: p6_aws_svc_sts_identity_broker_custom_login_url(cred_file)
#
#  Args:
#	cred_file -
#
#>
######################################################################
p6_aws_svc_sts_identity_broker_custom_login_url() {
    local cred_file="$1"

    # endpoints
    local federation_endpoint="https://signin.aws.amazon.com/federation"
    local console_endpoint="https://console.aws.amazon.com/"

    # id, key, token in cred file
    local access_key_id
    local secret_access_key
    local session_token

    # Parse (depends on file having only 1 profile; which it does)
    access_key_id=$(p6_file_display "$cred_file" | p6_filter_row_select "access_key_id" | p6_filter_column_pluck 3)
    secret_access_key=$(p6_file_display "$cred_file" | p6_filter_row_select "secret_access_key" | p6_filter_column_pluck 3)
    session_token=$(p6_file_display "$cred_file" | p6_filter_row_select "session_token" | p6_filter_column_pluck 3)

    # string
    local str
    str="{\"sessionId\":\"$access_key_id\",\"sessionKey\":\"$secret_access_key\",\"sessionToken\":\"$session_token\"}"

    # url encode str
    local session
    session=$(p6_echo "$str" | p6_json_eval -sRr @uri)

    # getSigninToken request
    local response
    response=$(p6_curl -s "$federation_endpoint?Action=getSigninToken&SessionDuration=1800&Session=$session")

    # grab SigninToken
    local signin_token
    signin_token=$(p6_echo "$response" | p6_json_eval -r ".SigninToken")

    # login request
    local destination
    local issuer
    destination=$(p6_echo "$console_endpoint" | p6_json_eval -Rr @uri)
    issuer=$(p6_echo "p6cli" | p6_json_eval -rR @uri)

    local login_url
    login_url="$federation_endpoint?Action=login&Issuer=$issuer&Destination=$destination&SigninToken=$signin_token"

    p6_echo "$login_url"
}
