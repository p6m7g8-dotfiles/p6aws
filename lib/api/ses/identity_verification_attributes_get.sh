p6_aws_ses_identity_verification_attributes_get() {
    local identities="$1"
    shift 1

    p6_log_and_run aws ses get-identity-verification-attributes --identities $identities "$@"
}
