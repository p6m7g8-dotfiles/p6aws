######################################################################
#<
#
# Function:
#	p6_aws_lightsail_relational_database_blueprints_get()
#
#>
######################################################################
p6_aws_lightsail_relational_database_blueprints_get() {

    p6_run_read_cmd aws lightsail get-relational-database-blueprints "$@"
}