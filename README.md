# P6's POSIX.2: p6aws

## Table of Contents

## Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)
[![Mergify](https://img.shields.io/endpoint.svg?url=https://gh.mergify.io/badges/p6m7g8/p6aws/&style=flat)](https://mergify.io)
[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](<https://gitpod.io/#https://github.com/p6m7g8/p6aws>)

## Summary

## Contributing

- [How to Contribute](<https://github.com/p6m7g8/.github/blob/main/CONTRIBUTING.md>)

## Code of Conduct

- [Code of Conduct](<https://github.com/p6m7g8/.github/blob/main/CODE_OF_CONDUCT.md>)

## Usage

### Aliases

### Functions

## cfg

### p6aws/lib/cfg/api.sh

- p6_aws_cfg_clear()
- p6_aws_cfg_realize(profile)
- p6_aws_cfg_reset()
- p6_aws_cfg_show()

### p6aws/lib/cfg/kinds.sh

- p6_aws_cfg_restore_saved()
- p6_aws_cfg_restore_source()
- p6_aws_cfg_save()
- p6_aws_cfg_save_source()
- words kinds = p6_aws_cfg_kinds()

### p6aws/lib/cfg/vars.sh

- code rc = p6_aws_cfg_vars_filter_secret(val)
- words env_vars = p6_aws_cfg_vars()
- words env_vars = p6_aws_cfg_vars_config()
- words env_vars = p6_aws_cfg_vars_min()
- words env_vars = p6_aws_cfg_vars_secret()
- words env_vars = p6_aws_cfg_vars_sso()

## cli

### p6aws/lib/cli/cli.sh

- code rc = p6_aws_cli_cmd(service, cmd, ...)
- p6_aws_cli_qload(dir)
- str str = p6_aws_cli_jq_tag_name_get()

### p6aws/lib/cli/organizations.sh

- p6_aws_cli_organization_off(org)
- p6_aws_cli_organization_on(org)

### p6aws/lib/cli/prompt.sh

- str str = p6_aws_cfg_prompt_info(kind)

### p6aws/lib/cli/shortcuts.sh

- p6_aws_cli_shortcuts_generate_un(org)
- p6_aws_cli_shortcuts_on(org)
- str func = p6_aws_cli_shortcuts_generate_one(profile)
- str prefix = p6_aws_cli_shortcuts_prefix()
- str shell_function_name = p6_aws_shortcuts_profile_to_shell_function_name(profile)

## env

### p6aws/lib/env/active.sh

- str old = p6_aws_env_access_key_id_active([val=])
- str old = p6_aws_env_ca_bundle_active([val=])
- str old = p6_aws_env_codebuild_project_name_active([val=])
- str old = p6_aws_env_config_file_active([val=])
- str old = p6_aws_env_default_profile_active([val=])
- str old = p6_aws_env_default_region_active([val=])
- str old = p6_aws_env_default_sso_region_active([val=])
- str old = p6_aws_env_default_sso_start_url_active([val=])
- str old = p6_aws_env_eks_cluster_name_active([val=])
- str old = p6_aws_env_env_active([val=])
- str old = p6_aws_env_env_tag_active([val=])
- str old = p6_aws_env_login_default_sso_region_active([val=])
- str old = p6_aws_env_metadata_service_num_attempts_active([val=])
- str old = p6_aws_env_metadata_service_timeout_active([val=])
- str old = p6_aws_env_org_active([val=])
- str old = p6_aws_env_output_active([val=])
- str old = p6_aws_env_profile_active([val=])
- str old = p6_aws_env_region_active([val=])
- str old = p6_aws_env_secret_access_key_active([val=])
- str old = p6_aws_env_session_token_active([val=])
- str old = p6_aws_env_shared_credentials_file_active([val=])
- str old = p6_aws_env_sso_account_id_active([val=])
- str old = p6_aws_env_sso_account_name_active([val=])
- str old = p6_aws_env_sso_region_active([val=])
- str old = p6_aws_env_sso_role_name_active([val=])
- str old = p6_aws_env_sso_start_url_active([val=])
- str old = p6_aws_env_vpc_id_active([val=])

### p6aws/lib/env/saved.sh

- str old = p6_aws_env_access_key_id_saved([val=])
- str old = p6_aws_env_ca_bundle_saved([val=])
- str old = p6_aws_env_codebuild_project_name_saved([val=])
- str old = p6_aws_env_config_file_saved([val=])
- str old = p6_aws_env_default_profile_saved([val=])
- str old = p6_aws_env_default_region_saved([val=])
- str old = p6_aws_env_default_sso_region_saved([val=])
- str old = p6_aws_env_default_sso_start_url_saved([val=])
- str old = p6_aws_env_eks_cluster_name_saved([val=])
- str old = p6_aws_env_env_saved([val=])
- str old = p6_aws_env_env_tag_saved([val=])
- str old = p6_aws_env_login_default_sso_region_saved([val=])
- str old = p6_aws_env_metadata_service_num_attempts_saved([val=])
- str old = p6_aws_env_metadata_service_timeout_saved([val=])
- str old = p6_aws_env_org_saved([val=])
- str old = p6_aws_env_output_saved([val=])
- str old = p6_aws_env_profile_saved([val=])
- str old = p6_aws_env_region_saved([val=])
- str old = p6_aws_env_secret_access_key_saved([val=])
- str old = p6_aws_env_session_token_saved([val=])
- str old = p6_aws_env_shared_credentials_file_saved([val=])
- str old = p6_aws_env_sso_account_id_saved([val=])
- str old = p6_aws_env_sso_account_name_saved([val=])
- str old = p6_aws_env_sso_region_saved([val=])
- str old = p6_aws_env_sso_role_name_saved([val=])
- str old = p6_aws_env_sso_start_url_saved([val=])
- str old = p6_aws_env_vpc_id_saved([val=])

### p6aws/lib/env/source.sh

- str old = p6_aws_env_access_key_id_source([val=])
- str old = p6_aws_env_ca_bundle_source([val=])
- str old = p6_aws_env_codebuild_project_name_source([val=])
- str old = p6_aws_env_config_file_source([val=])
- str old = p6_aws_env_default_profile_source([val=])
- str old = p6_aws_env_default_region_source([val=])
- str old = p6_aws_env_default_sso_region_source([val=])
- str old = p6_aws_env_default_sso_start_url_source([val=])
- str old = p6_aws_env_eks_cluster_name_source([val=])
- str old = p6_aws_env_env_source([val=])
- str old = p6_aws_env_env_tag_source([val=])
- str old = p6_aws_env_login_default_sso_region_source([val=])
- str old = p6_aws_env_metadata_service_num_attempts_source([val=])
- str old = p6_aws_env_metadata_service_timeout_source([val=])
- str old = p6_aws_env_org_source([val=])
- str old = p6_aws_env_output_source([val=])
- str old = p6_aws_env_profile_source([val=])
- str old = p6_aws_env_region_source([val=])
- str old = p6_aws_env_secret_access_key_source([val=])
- str old = p6_aws_env_session_token_source([val=])
- str old = p6_aws_env_shared_credentials_file_source([val=])
- str old = p6_aws_env_sso_account_id_source([val=])
- str old = p6_aws_env_sso_account_name_source([val=])
- str old = p6_aws_env_sso_region_source([val=])
- str old = p6_aws_env_sso_role_name_source([val=])
- str old = p6_aws_env_sso_start_url_source([val=])
- str old = p6_aws_env_vpc_id_source([val=])

## p6aws

### p6aws/init.zsh

- p6df::modules::p6aws::deps()
- p6df::modules::p6aws::init(_module, dir)

## profile

### p6aws/lib/profile/config.sh

- p6_aws_profile_config_add()
- words profiles = p6_aws_profile_config_list()

### p6aws/lib/profile/cred.sh

- p6_aws_profile_cred_add()

## svc/autoscaling

### p6aws/lib/svc/autoscaling/_lc.sh

- p6_old_aws_svc_autoscaling_asg_load_balancer_names(asg_name, load_balancer_names)
- p6_old_aws_svc_autoscaling_lc_user_data_show(lc_name)
- p6_old_aws_svc_autoscaling_lcs_list()

### p6aws/lib/svc/autoscaling/asg.sh

- p6_aws_svc_autoscaling_asg_act_detailed_list(asg_name)
- p6_aws_svc_autoscaling_asg_act_list(asg_name)
- p6_aws_svc_autoscaling_asg_target_group_arn(asg_name, target_group_arn)
- p6_aws_svc_autoscaling_asgs_list()

## svc/billingconductor

### p6aws/lib/svc/billingconductor/association.sh

- p6_aws_svc_billingconductor_associations_list()

## svc/cloudformation

### p6aws/lib/svc/cloudformation/stack.sh

- stream  = p6_aws_svc_cloudformation_stacks_list()

## svc/cloudfront

### p6aws/lib/svc/cloudfront/distribution.sh

- p6_aws_svc_cloudfront_distributions_list()

## svc/cloudtrail

### p6aws/lib/svc/cloudtrail/trail.sh

- stream  = p6_aws_svc_cloudtrail_trail_arns([prefix=.])

## svc/cloudwatch

### p6aws/lib/svc/cloudwatch/lambda.sh

- p6_aws_svc_logs_lambda_watch_jq(log_group_name)

### p6aws/lib/svc/cloudwatch/logs.sh

- p6_aws_svc_logs_groups_list()
- p6_aws_svc_logs_watch(log_group_name)

### p6aws/lib/svc/cloudwatch/trail.sh

- p6_aws_svc_logs_trail_watch_jq(log_group_name)

## svc/codebuild

### p6aws/lib/svc/codebuild/build.sh

- p6_aws_codebuild_build_get(build_id)
- p6_aws_svc_codebuild_builds_list()
- p6_aws_svc_codebuild_project_build_list(project_name)
- p6_aws_svc_codebuild_projects_list()

## svc/codepipeline

### p6aws/lib/svc/codepipeline/pipeline.sh

- p6_aws_svc_codepipeline_list()

## svc/dynamodb

### p6aws/lib/svc/dynamodb/table.sh

- p6_aws_svc_dynamodb_table_all(table_name)
- p6_aws_svc_dynamodb_table_describe(table_name)
- p6_aws_svc_dynamodb_tables_list()

## svc/ec2

### p6aws/lib/svc/ec2/ami.sh

- str ami_id = p6_aws_svc_ec2_ami_find_amazon2_latest()
- str ami_id = p6_aws_svc_ec2_ami_find_freebsd_15_current()
- str ami_id = p6_aws_svc_ec2_ami_find_id(glob)
- str ami_id = p6_aws_svc_ec2_ami_id_from_instance_id(instance_id)
- str ami_name = p6_aws_svc_ec2_ami_name_from_instance_id(instance_id)
- str user = p6_aws_svc_ec2_user_from_ami_name(ami_name)
- stream  = p6_aws_svc_ec2_ami_show(ami_id)
- stream  = p6_aws_svc_ec2_amis_list()
- stream  = p6_aws_svc_ec2_amis_mine_list()

### p6aws/lib/svc/ec2/instance.sh

- str az = p6_aws_svc_ec2_availability_zone(instance_id)
- str instance_id = p6_aws_svc_ec2_instance_id_from_name_tag(name)
- str private_ip = p6_aws_svc_ec2_instance_private_ip(instance_id)
- str public_ip = p6_aws_svc_ec2_instance_public_ip(instance_id)
- stream  = p6_aws_svc_ec2_instance_show(instance_id)
- stream  = p6_aws_svc_ec2_instances_list(vpc_id)

### p6aws/lib/svc/ec2/lt.sh

- p6_aws_svc_ec2_launch_templates_list()

### p6aws/lib/svc/ec2/nat.sh

- p6_aws_svc_ec2_nat_gateway_show(vpc_id)

### p6aws/lib/svc/ec2/network.sh

- p6_aws_svc_ec2_network_int_list(vpc_id)

### p6aws/lib/svc/ec2/region.sh

- p6_aws_svc_ec2_regions_iterator()
- p6_aws_svc_ec2_regions_list()

### p6aws/lib/svc/ec2/rtb.sh

- p6_aws_svc_ec2_rtb_show(rtb_id, vpc_id)
- p6_aws_svc_ec2_rtbs_list(vpc_id)

### p6aws/lib/svc/ec2/sg.sh

- p6_aws_svc_ec2_sg_show(security_group_id_or_name, vpc_id)
- str sg_id = p6_aws_svc_ec2_sg_id_from_instance_id(instance_id)
- str sg_id = p6_aws_svc_ec2_sg_id_from_instance_tag(tag)
- str sg_id = p6_aws_svc_ec2_sg_id_from_sg_tag(tag_name, vpc_id)
- stream  = p6_aws_svc_ec2_sgs_list(vpc_id)

### p6aws/lib/svc/ec2/subnet.sh

- p6_aws_svc_ec2_subnet_get(subnet_type, vpc_id)
- p6_aws_svc_ec2_subnets_list(vpc_id)
- words subnet_ids = p6_aws_svc_ec2_subnet_ids_get(subnet_type, vpc_id)

### p6aws/lib/svc/ec2/tgw.sh

- p6_aws_svc_ec2_tgw_attachments_list(tgw_id)
- p6_aws_svc_ec2_tgw_routes_list(tgw_id)
- p6_aws_svc_ec2_tgw_show(tgw_id)
- p6_aws_svc_ec2_tgws_list()

### p6aws/lib/svc/ec2/volume.sh

- p6_aws_svc_ec2_volumes_list()

### p6aws/lib/svc/ec2/vpc.sh

- p6_aws_svc_ec2_vpcs_list()
- str vpc_id = p6_aws_svc_ec2_vpc_id_from_vpc_name(vpc_name)

## svc/eks

### p6aws/lib/svc/eks/cluster.sh

- p6_aws_svc_eks_cluster_update_kubeconfig(cluster_name)
- str cluster_name = p6_aws_svc_eks_cluster_find(glob)
- str cluster_status = p6_aws_svc_eks_cluster_status(cluster_name)

## svc/elb

### p6aws/lib/svc/elb/main.sh

- p6_aws_svc_ec2_elb_listeners_list(load_balancer_name)
- p6_aws_svc_elb_list()

## svc/elbv2

### p6aws/lib/svc/elbv2/main.sh

- p6_aws_svc_alb_list()
- p6_aws_svc_alb_listeners_list(load_balancer_name)

## svc/glue

### p6aws/lib/svc/glue/crawlers.sh

- p6_aws_svc_glue_crawlers_arn_list()

### p6aws/lib/svc/glue/database.sh

- p6_aws_svc_glue_databases_arn_list()

### p6aws/lib/svc/glue/endpoint.sh

- p6_aws_svc_glue_crawlers_arn_list()

### p6aws/lib/svc/glue/job.sh

- p6_aws_svc_glue_job_arn_list()

### p6aws/lib/svc/glue/table.sh

- p6_aws_svc_glue_tables_arn_list()

## svc/iam

### p6aws/lib/svc/iam/alias.sh

- p6_aws_svc_iam_account_alias()

### p6aws/lib/svc/iam/instance.sh

- p6_aws_svc_iam_instance_profiles_list()

### p6aws/lib/svc/iam/policy.sh

- p6_aws_svc_iam_policy_cloudtrail_write(resource)
- p6_aws_svc_iam_policy_s3_cloudtrail_write(trail_bucket, account_id)
- p6_aws_svc_iam_policy_saml(account_id, provider)
- p6_aws_svc_iam_policy_service_write(service)

### p6aws/lib/svc/iam/role.sh

- p6_aws_svc_iam_role_policies(role_name)
- stream  = p6_aws_svc_iam_roles_list()

### p6aws/lib/svc/iam/user.sh

- p6_aws_svc_iam_users_list()

## svc/imagebuilder

### p6aws/lib/svc/imagebuilder/main.sh

- p6_aws_svc_imagebuilder_dc_list()
- p6_aws_svc_imagebuilder_ic_list()
- p6_aws_svc_imagebuilder_images_list()
- p6_aws_svc_imagebuilder_ir_list()
- p6_aws_svc_imagebuilder_pipelines_list()

## svc/kms

### p6aws/lib/svc/kms/key.sh

- p6_aws_svc_kms_list_aliases()
- p6_aws_svc_kms_list_aliases_aws()
- p6_aws_svc_kms_list_aliases_mine()

## svc/lambda

### p6aws/lib/svc/lambda/function.sh

- p6_aws_svc_lambda_functions_by_runtime()
- p6_aws_svc_lambda_functions_envs()
- p6_aws_svc_lambda_functions_list()
- p6_aws_svc_lambda_functions_runtimes()

## svc/mwaa

### p6aws/lib/svc/mwaa/env.sh

- p6_aws_svc_mwaa_environments_arn_list()

## svc/organizations

### p6aws/lib/svc/organizations/account.sh

- aws_account_id account_id = p6_aws_svc_organization_management_account_id_get()
- aws_account_id new_account_id = p6_aws_svc_organizations_account_id_from_account_name(account_name)
- str account_name = p6_aws_svc_organization_management_account_name_get()
- str account_name = p6_aws_svc_organizations_account_name_from_account_id(account_id)
- stream  = p6_aws_svc_organizations_accounts_list()
- stream  = p6_aws_svc_organizations_accounts_list_active()
- words account_ids = p6_aws_svc_organizations_account_list_active_ids_without_management()
- words account_ids = p6_aws_svc_organizations_accounts_list_active_ids()
- words account_ids = p6_aws_svc_organizations_accounts_list_active_ids_as_list()
- words account_ids_and_names = p6_aws_svc_organizations_accounts_list_active_ids_and_names()

### p6aws/lib/svc/organizations/lz.sh

- p6_aws_svc_organizations_lz_do(...)

### p6aws/lib/svc/organizations/organization.sh

- aws_account_id master_account_id = p6_aws_svc_organizations_management_account_id_get()
- p6_aws_svc_organizations_id_get()
- str management_account_name = p6_aws_svc_organizations_management_account_name_get()

### p6aws/lib/svc/organizations/sts.sh

- p6_aws_svc_organizations_sts_github_su(account_name_or_account_id)
- p6_aws_svc_organizations_sts_github_su_un()
- p6_aws_svc_organizations_sts_local_su(account_name_or_account_id)
- p6_aws_svc_organizations_sts_local_su_un()
- p6_aws_svc_organizations_sts_run_as(account_name_or_account_id, ...)
- p6_aws_svc_organizations_sts_su(account_name_or_account_id)
- p6_aws_svc_organizations_sts_su_un()

## svc/rds

### p6aws/lib/svc/rds/instance.sh

- p6_aws_svc_rds_instance_arns_list()
- p6_aws_svc_rds_pgpassword_from_iam_get(host, username, port)

## svc/route53

### p6aws/lib/svc/route53/resources.sh

- p6_aws_svc_route53_resources_list(zone)

### p6aws/lib/svc/route53/zones.sh

- p6_aws_svc_route53_zones_hosted_id_from_zone(zone)
- p6_aws_svc_route53_zones_hosted_list()

## svc/route53domains

### p6aws/lib/svc/route53domains/domain.sh

- p6_aws_svc_route53_domains_details(domain_name, ...)
- p6_aws_svc_route53_domains_list()
- p6_aws_svc_route53_domains_list_not_autorenew()
- p6_aws_svc_route53_domains_list_not_locked()
- p6_aws_svc_route53_domains_nameservers_api(domain_name)
- p6_aws_svc_route53_domains_nameservers_delta(domain_name)
- p6_aws_svc_route53_domains_nameservers_whois(domain_name)

## svc/s3

### p6aws/lib/svc/s3/bucket.sh

- p6_aws_svc_s3_bucket_list(bucket)
- p6_aws_svc_s3_bucket_policy()
- p6_aws_svc_s3_buckets_list()
- str bucket_name = p6_aws_svc_s3_bucket_find_prefix(prefix)

## svc/s3api

### p6aws/lib/svc/s3api/bucket.sh

- p6_aws_svc_s3api_bucket_list_objects_all(bucket)
- p6_aws_svc_s3api_bucket_objects_deleted(bucket)
- p6_aws_svc_s3api_bucket_objects_versions_list(bucket)
- p6_aws_svc_s3api_bucket_policy(bucket)

## svc/secretsmanager

### p6aws/lib/svc/secretsmanager/secret.sh

- p6_aws_svc_secretsmanager_list()
- p6_aws_svc_secretsmanager_secret_get(name)

## svc/securityhub

### p6aws/lib/svc/securityhub/aggregator.sh

- aws_arn arn = p6_aws_svc_securityhub_aggregator_arn()

## svc/sns

### p6aws/lib/svc/sns/topic.sh

- p6_aws_svc_sns_topics_list()

## svc/ssm

### p6aws/lib/svc/ssm/document.sh

- p6_aws_svc_ssm_documents_list()
- p6_aws_svc_ssm_documents_list_aws()
- p6_aws_svc_ssm_documents_list_of()

## svc/stepfunctions

### p6aws/lib/svc/stepfunctions/machine.sh

- p6_aws_svc_stepfunctions_list()
- p6_aws_svc_stepfunctions_state_machine_show(state_machine, ...)

## svc/sts

### p6aws/lib/svc/sts/account.sh

- aws_account_id account_id = p6_aws_svc_sts_account_id()
- str role_name = p6_aws_svc_sts_account_role_name()

### p6aws/lib/svc/sts/decode.sh

- stream  = p6_aws_svc_sts_decode_msg(encoded)

### p6aws/lib/svc/sts/identity.sh

- p6_aws_svc_sts_identity_broker_custom_login_url(cred_file)
- stream  = p6_aws_svc_sts_whoami()

### p6aws/lib/svc/sts/prompt.sh

- str str = p6_aws_sts_prompt_info(creds)

### p6aws/lib/svc/sts/role.sh

- p6_aws_svc_sts_role_assume(role_arn, role_session_name)
- p6_aws_svc_sts_role_assume_un()
- p6_aws_svc_sts_role_credentials_on(json, role_arn, role_session_name, type)
- p6_aws_svc_sts_role_federation_assume(profile)

## util

### p6aws/lib/util/env.sh

- p6_aws_util_env_org([val=$P6_AWS_ORG])
- p6_aws_util_env_output([val=json])
- p6_aws_util_env_profile([val=])
- p6_aws_util_env_region([val=us-east-1])
- str config_file = p6_aws_util_env_config_file([org=])
- str cred_file = p6_aws_util_env_shared_credentials_file([org=])

### p6aws/lib/util/p6_return.sh

- str account_id = p6_return_aws_account_id(account_id)
- str arn = p6_return_aws_arn(arn)
- str logical_id = p6_return_aws_logical_id(logical_id)
- str organization_id = p6_return_aws_organization_id(organization_id)
- str profile = p6_return_aws_profile(profile)
- str resource_id = p6_return_aws_resource_id(resource_id)
- str subnet_id = p6_return_aws_subnet_id(subnet_id)

### p6aws/lib/util/template.sh

- p6_aws_template_process(infile, ...)

## Hierarchy

```text
.
├── README.md
├── init.zsh
├── lib
│   ├── cfg
│   │   ├── _gen.sh
│   │   ├── _kinds.sh
│   │   ├── api.sh
│   │   ├── debug.sh
│   │   ├── kinds.sh
│   │   └── vars.sh
│   ├── cli
│   │   ├── cli.sh
│   │   ├── debug.sh
│   │   ├── organizations.sh
│   │   ├── prompt.sh
│   │   └── shortcuts.sh
│   ├── env
│   │   ├── active.sh
│   │   ├── saved.sh
│   │   └── source.sh
│   ├── profile
│   │   ├── config.sh
│   │   ├── cred.sh
│   │   └── debug.sh
│   ├── svc
│   │   ├── autoscaling
│   │   │   ├── _lc.sh
│   │   │   └── asg.sh
│   │   ├── billingconductor
│   │   │   └── association.sh
│   │   ├── cloudformation
│   │   │   └── stack.sh
│   │   ├── cloudfront
│   │   │   ├── distribution.sh
│   │   │   └── q
│   │   ├── cloudtrail
│   │   │   └── trail.sh
│   │   ├── cloudwatch
│   │   │   ├── lambda.sh
│   │   │   ├── logs.sh
│   │   │   └── trail.sh
│   │   ├── codebuild
│   │   │   └── build.sh
│   │   ├── codepipeline
│   │   │   └── pipeline.sh
│   │   ├── dynamodb
│   │   │   └── table.sh
│   │   ├── ec2
│   │   │   ├── ami.sh
│   │   │   ├── instance.sh
│   │   │   ├── key_pair.sh
│   │   │   ├── lt.sh
│   │   │   ├── nat.sh
│   │   │   ├── network.sh
│   │   │   ├── region.sh
│   │   │   ├── rtb.sh
│   │   │   ├── sg.sh
│   │   │   ├── subnet.sh
│   │   │   ├── tgw.sh
│   │   │   ├── volume.sh
│   │   │   └── vpc.sh
│   │   ├── eks
│   │   │   └── cluster.sh
│   │   ├── elb
│   │   │   └── main.sh
│   │   ├── elbv2
│   │   │   └── main.sh
│   │   ├── glue
│   │   │   ├── crawlers.sh
│   │   │   ├── database.sh
│   │   │   ├── endpoint.sh
│   │   │   ├── job.sh
│   │   │   └── table.sh
│   │   ├── iam
│   │   │   ├── alias.sh
│   │   │   ├── instance.sh
│   │   │   ├── policy.sh
│   │   │   ├── role.sh
│   │   │   └── user.sh
│   │   ├── imagebuilder
│   │   │   └── main.sh
│   │   ├── kms
│   │   │   └── key.sh
│   │   ├── lambda
│   │   │   └── function.sh
│   │   ├── mwaa
│   │   │   └── env.sh
│   │   ├── organizations
│   │   │   ├── account.sh
│   │   │   ├── lz.sh
│   │   │   ├── organization.sh
│   │   │   └── sts.sh
│   │   ├── rds
│   │   │   └── instance.sh
│   │   ├── route53
│   │   │   ├── resources.sh
│   │   │   └── zones.sh
│   │   ├── route53domains
│   │   │   └── domain.sh
│   │   ├── s3
│   │   │   └── bucket.sh
│   │   ├── s3api
│   │   │   └── bucket.sh
│   │   ├── secretsmanager
│   │   │   └── secret.sh
│   │   ├── securityhub
│   │   │   └── aggregator.sh
│   │   ├── sns
│   │   │   └── topic.sh
│   │   ├── ssm
│   │   │   └── document.sh
│   │   ├── stepfunctions
│   │   │   └── machine.sh
│   │   └── sts
│   │       ├── account.sh
│   │       ├── debug.sh
│   │       ├── decode.sh
│   │       ├── identity.sh
│   │       ├── prompt.sh
│   │       └── role.sh
│   └── util
│       ├── debug.sh
│       ├── env.sh
│       ├── p6_return.sh
│       └── template.sh
├── t
│   ├── cfg-access_key_id-active.t
│   ├── cfg-access_key_id-saved.t
│   ├── cfg-access_key_id-source.t
│   ├── cfg-ca_bundle-active.t
│   ├── cfg-ca_bundle-saved.t
│   ├── cfg-ca_bundle-source.t
│   ├── cfg-codebuild_project_name-active.t
│   ├── cfg-codebuild_project_name-saved.t
│   ├── cfg-codebuild_project_name-source.t
│   ├── cfg-config_file-active.t
│   ├── cfg-config_file-saved.t
│   ├── cfg-config_file-source.t
│   ├── cfg-default_profile-active.t
│   ├── cfg-default_profile-saved.t
│   ├── cfg-default_profile-source.t
│   ├── cfg-default_region-active.t
│   ├── cfg-default_region-saved.t
│   ├── cfg-default_region-source.t
│   ├── cfg-default_sso_region-active.t
│   ├── cfg-default_sso_region-saved.t
│   ├── cfg-default_sso_region-source.t
│   ├── cfg-default_sso_start_url-active.t
│   ├── cfg-default_sso_start_url-saved.t
│   ├── cfg-default_sso_start_url-source.t
│   ├── cfg-eks_cluster_name-active.t
│   ├── cfg-eks_cluster_name-saved.t
│   ├── cfg-eks_cluster_name-source.t
│   ├── cfg-env-active.t
│   ├── cfg-env-saved.t
│   ├── cfg-env-source.t
│   ├── cfg-env_tag-active.t
│   ├── cfg-env_tag-saved.t
│   ├── cfg-env_tag-source.t
│   ├── cfg-login_default_sso_region-active.t
│   ├── cfg-login_default_sso_region-saved.t
│   ├── cfg-login_default_sso_region-source.t
│   ├── cfg-metadata_service_num_attempts-active.t
│   ├── cfg-metadata_service_num_attempts-saved.t
│   ├── cfg-metadata_service_num_attempts-source.t
│   ├── cfg-metadata_service_timeout-active.t
│   ├── cfg-metadata_service_timeout-saved.t
│   ├── cfg-metadata_service_timeout-source.t
│   ├── cfg-org-active.t
│   ├── cfg-org-saved.t
│   ├── cfg-org-source.t
│   ├── cfg-output-active.t
│   ├── cfg-output-saved.t
│   ├── cfg-output-source.t
│   ├── cfg-profile-active.t
│   ├── cfg-profile-saved.t
│   ├── cfg-profile-source.t
│   ├── cfg-region-active.t
│   ├── cfg-region-saved.t
│   ├── cfg-region-source.t
│   ├── cfg-secret_access_key-active.t
│   ├── cfg-secret_access_key-saved.t
│   ├── cfg-secret_access_key-source.t
│   ├── cfg-session_token-active.t
│   ├── cfg-session_token-saved.t
│   ├── cfg-session_token-source.t
│   ├── cfg-shared_credentials_file-active.t
│   ├── cfg-shared_credentials_file-saved.t
│   ├── cfg-shared_credentials_file-source.t
│   ├── cfg-sso_account_id-active.t
│   ├── cfg-sso_account_id-saved.t
│   ├── cfg-sso_account_id-source.t
│   ├── cfg-sso_account_name-active.t
│   ├── cfg-sso_account_name-saved.t
│   ├── cfg-sso_account_name-source.t
│   ├── cfg-sso_region-active.t
│   ├── cfg-sso_region-saved.t
│   ├── cfg-sso_region-source.t
│   ├── cfg-sso_role_name-active.t
│   ├── cfg-sso_role_name-saved.t
│   ├── cfg-sso_role_name-source.t
│   ├── cfg-sso_start_url-active.t
│   ├── cfg-sso_start_url-saved.t
│   ├── cfg-sso_start_url-source.t
│   ├── cfg-vpc_id-active.t
│   ├── cfg-vpc_id-saved.t
│   └── cfg-vpc_id-source.t
└── tmpl
    ├── cfg
    │   ├── accessor.tmpl
    │   └── taccessor.tmpl
    ├── ec2
    │   └── launch_configuration.json
    ├── iam
    │   ├── cloudtrail.json
    │   ├── cloudtrail_events.json
    │   ├── kms.json
    │   ├── kms_cloudtrail.json
    │   ├── s3_cloudtrail.json
    │   ├── saml.json
    │   └── service.json
    ├── jc
    │   └── auth.json
    └── sts
        ├── conf
        └── cred

46 directories, 181 files
```

## Author

Philip M . Gollucci <pgollucci@p6m7g8.com>
