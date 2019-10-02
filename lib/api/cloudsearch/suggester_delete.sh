######################################################################
#<
#
# Function:
#	p6_aws_cloudsearch_suggester_delete(domain_name, suggester_name)
#
#  Args:
#	domain_name - 
#	suggester_name - 
#
#>
######################################################################
p6_aws_cloudsearch_suggester_delete() {
    local domain_name="$1"
    local suggester_name="$2"
    shift 2

    p6_run_write_cmd aws cloudsearch delete-suggester --domain-name $domain_name --suggester-name $suggester_name "$@"
}