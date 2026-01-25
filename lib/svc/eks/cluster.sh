######################################################################
#<
#
# Function: str cluster_status = p6_aws_svc_eks_cluster_status(cluster_name)
#
#  Args:
#	cluster_name -
#
#  Returns:
#	str - cluster_status
#
#>
######################################################################
p6_aws_svc_eks_cluster_status() {
  local cluster_name="$1"

  local cluster_status
  cluster_status=$(p6_aws_cli_cmd eks describe-cluster \
    --name "$cluster_name" \
    --query "cluster.status" \
    --output text)

  p6_return_str "$cluster_status"
}

######################################################################
#<
#
# Function: str cluster_name = p6_aws_svc_eks_cluster_find(glob)
#
#  Args:
#	glob -
#
#  Returns:
#	str - cluster_name
#
#>
######################################################################
p6_aws_svc_eks_cluster_find() {
  local glob="$1"

  local cluster_name=$(
    p6_aws_cli_cmd eks list-clusters --query "'clusters[*]'" --output text | p6_filter_row_select "$glob"
  )

  p6_return_str "$cluster_name"
}

######################################################################
#<
#
# Function: p6_aws_svc_eks_cluster_update_kubeconfig(cluster_name)
#
#  Args:
#	cluster_name -
#
#>
######################################################################
p6_aws_svc_eks_cluster_update_kubeconfig() {
  local cluster_name="$1"

  p6_aws_cli_cmd eks update-kubeconfig --name "$cluster_name"

  p6_return_void
}
