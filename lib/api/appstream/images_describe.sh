######################################################################
#<
#
# Function:
#	p6_aws_appstream_images_describe()
#
#>
######################################################################
p6_aws_appstream_images_describe() {

    p6_run_read_cmd aws appstream describe-images "$@"
}