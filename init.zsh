######################################################################
#<
#
# Function: p6df::modules::p6aws::deps()
#
#  Depends:	 p6_bootstrap
#>
######################################################################
p6df::modules::p6aws::deps() { 
  ModuleDeps=(
    p6m7g8/p6common
  ) 
}
######################################################################
#<
#
# Function: p6df::modules::p6aws::init()
#
#  Depends:	 p6_bootstrap
#  Environment:	 P6_DFZ_SRC_DIR
#>
######################################################################
p6df::modules::p6aws::init() {

  p6_bootstrap "$__p6_dir"
}
