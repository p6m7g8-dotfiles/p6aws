# p6aws

## Table of Contents


### p6aws
- [p6aws](#p6aws)
  - [Badges](#badges)
  - [Distributions](#distributions)
  - [Summary](#summary)
  - [Contributing](#contributing)
  - [Code of Conduct](#code-of-conduct)
  - [Usage](#usage)
  - [Author](#author)

### Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)
[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/p6m7g8/p6aws)
[![Mergify](https://img.shields.io/endpoint.svg?url=https://gh.mergify.io/badges/p6m7g8/p6aws/&style=flat)](https://mergify.io)
[![codecov](https://codecov.io/gh/p6m7g8/p6aws/branch/master/graph/badge.svg?token=14Yj1fZbew)](https://codecov.io/gh/p6m7g8/p6aws)
[![Gihub repo dependents](https://badgen.net/github/dependents-repo/p6m7g8/p6aws)](https://github.com/p6m7g8/p6aws/network/dependents?dependent_type=REPOSITORY)
[![Gihub package dependents](https://badgen.net/github/dependents-pkg/p6m7g8/p6aws)](https://github.com/p6m7g8/p6aws/network/dependents?dependent_type=PACKAGE)

## Summary

## Contributing

- [How to Contribute](CONTRIBUTING.md)

## Code of Conduct

- [Code of Conduct](https://github.com/p6m7g8/.github/blob/master/CODE_OF_CONDUCT.md)

## Usage


### Aliases


### Functions

### p6aws:

#### p6aws/init.zsh:

- p6df::modules::p6aws::deps()
- p6df::modules::p6aws::init(_module, dir)


### cfg:

#### cfg/api.sh:

- p6_aws_cfg_clear()
- p6_aws_cfg_realize(profile)
- p6_aws_cfg_reset()
- p6_aws_cfg_show()

#### cfg/kinds.sh:

- p6_aws_cfg_restore_saved()
- p6_aws_cfg_restore_source()
- p6_aws_cfg_save()
- p6_aws_cfg_save_source()
- words kinds = p6_aws_cfg_kinds()

#### cfg/vars.sh:

- code rc = p6_aws_cfg_vars_filter_secret(val)
- words env_vars = p6_aws_cfg_vars()
- words env_vars = p6_aws_cfg_vars_config()
- words env_vars = p6_aws_cfg_vars_min()
- words env_vars = p6_aws_cfg_vars_secret()
- words env_vars = p6_aws_cfg_vars_sso()


### cli:

#### cli/cli.sh:

- code rc = p6_aws_cli_cmd(service, cmd, ...)
- p6_aws_cli_qload(dir)
- str str = p6_aws_cli_jq_tag_name_get()

#### cli/organizations.sh:

- p6_aws_cli_organization_off(org)
- p6_aws_cli_organization_on(org)

#### cli/prompt.sh:

- str str = p6_aws_cfg_prompt_info(kind)

#### cli/shortcuts.sh:

- p6_aws_cli_shortcuts_generate_un(org)
- p6_aws_cli_shortcuts_on(org)
- str func = p6_aws_cli_shortcuts_generate_one(profile)
- str prefix = p6_aws_cli_shortcuts_prefix()
- str shell_function_name = p6_aws_shortcuts_profile_to_shell_function_name(profile)


### env:

#### env/active.sh:

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

#### env/saved.sh:

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

#### env/source.sh:

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


### profile:

#### profile/config.sh:

- p6_aws_profile_config_add()
- words profiles = p6_aws_profile_config_list()

#### profile/cred.sh:

- p6_aws_profile_cred_add()


### svc/autoscaling:

#### svc/autoscaling/asg.sh:

- p6_aws_svc_autoscaling_asg_act_deltailed_list(asg_name)
- p6_aws_svc_autoscaling_asg_act_list(asg_name)
- p6_aws_svc_autoscaling_asg_target_group_arn(asg_name, target_group_arn)
- p6_aws_svc_autoscaling_asgs_list()


### svc/billingconductor:

#### svc/billingconductor/association.sh:

- p6_aws_svc_billingconductor_associations_list()


### svc/cloudformation:

#### svc/cloudformation/stack.sh:

- p6_aws_svc_cloudformation_list()


### svc/cloudwatch:

#### svc/cloudwatch/logs.sh:

- p6_aws_svc_logs_groups_list()
- p6_aws_svc_logs_watch(log_group_name)
- p6_aws_svc_logs_watch_jq(log_group_name)

#### svc/cloudwatch/trail.sh:

- p6_aws_svc_logs_trail_watch_jq()


### svc/codebuild:

#### svc/codebuild/build.sh:

- p6_aws_codebuild_build_get(build_id)
- p6_aws_svc_codebuild_builds_list()
- p6_aws_svc_codebuild_project_build_list(project_name)
- p6_aws_svc_codebuild_projects_list()


### svc/codepipeline:

#### svc/codepipeline/pipeline.sh:

- p6_aws_svc_codepipeline_list()


### svc/dynamodb:

#### svc/dynamodb/table.sh:

- p6_aws_svc_dynamodb_table_all(table_name)
- p6_aws_svc_dynamodb_table_describe(table_name)
- p6_aws_svc_dynamodb_tables_list()


### svc/ec2:

#### svc/ec2/ami.sh:

- p6_aws_svc_ec2_ami_show(ami_id)
- p6_aws_svc_ec2_amis_list()
- p6_aws_svc_ec2_amis_mine_list()
- str ami_id = p6_aws_svc_ec2_ami_id_from_instance_id(instance_id)
- str ami_id = p6_aws_svc_ec2_amis_amazon2_latest()
- str ami_id = p6_aws_svc_ec2_amis_freebsd12_latest()
- str ami_id = p6_aws_svc_ec2_amis_rhel8_latest()
- str ami_id = p6_aws_svc_ec2_amis_ubuntu18_latest()
- str ami_name = p6_aws_svc_ec2_ami_name_from_instance_id(instance_id)
- str user = p6_aws_svc_ec2_user_from_ami_name(ami_name)
- words ami_ids = p6_aws_svc_ec2_ami_find_id(glob)

#### svc/ec2/instance.sh:

- p6_aws_svc_ec2_instance_show(instance_id)
- p6_aws_svc_ec2_instances_list(vpc_id)
- str az = p6_aws_svc_ec2_availability_zone(instance_id)
- str instance_id = p6_aws_svc_ec2_instance_id_from_name_tag(name)
- str private_ip = p6_aws_svc_ec2_instance_private_ip(instance_id)
- str public_ip = p6_aws_svc_ec2_instance_public_ip(instance_id)

#### svc/ec2/lt.sh:

- p6_aws_svc_ec2_launch_templates_list()

#### svc/ec2/nat.sh:

- p6_aws_svc_ec2_nat_gateway_show(vpc_id)

#### svc/ec2/network.sh:

- p6_aws_svc_ec2_network_int_list(vpc_id)

#### svc/ec2/region.sh:

- p6_aws_svc_ec2_regions_iterator()
- p6_aws_svc_ec2_regions_list()

#### svc/ec2/rtb.sh:

- p6_aws_svc_ec2_rtb_show(rtb_id, vpc_id)
- p6_aws_svc_ec2_rtbs_list(vpc_id)

#### svc/ec2/sg.sh:

- p6_aws_svc_ec2_sg_id_from_tag_name(tag_name, vpc_id)
- p6_aws_svc_ec2_sg_show(security_group_id_or_name, vpc_id)
- p6_aws_svc_ec2_sgs_list(vpc_id)
- p6_old_aws_svc_ec2_sg_id_from_group_name(group_name, vpc_id)

#### svc/ec2/subnet.sh:

- p6_aws_svc_ec2_subnet_get(subnet_type, vpc_id)
- p6_aws_svc_ec2_subnets_list(vpc_id)
- words subnet_ids = p6_aws_svc_ec2_subnet_ids_get(subnet_type, vpc_id)

#### svc/ec2/tgw.sh:

- p6_aws_svc_ec2_tgw_attachments_list(tgw_id)
- p6_aws_svc_ec2_tgw_routes_list(tgw_id)
- p6_aws_svc_ec2_tgw_show(tgw_id)
- p6_aws_svc_ec2_tgws_list()

#### svc/ec2/volume.sh:

- p6_aws_svc_ec2_volumes_list()

#### svc/ec2/vpc.sh:

- p6_aws_svc_ec2_vpcs_list()


### svc/ec2instanceconnect:

#### svc/ec2instanceconnect/util.sh:

- p6_aws_svc_ec2_instance_connect_ssh_public_key_send(instance_id)


### svc/eks:

#### svc/eks/cluster.sh:

- p6_aws_svc_eks_cluster_update_kubeconfig(cluster_name)
- str cluster_name = p6_aws_svc_eks_cluster_find(glob)
- str cluster_status = p6_aws_svc_eks_cluster_status(cluster_name)


### svc/elb:

#### svc/elb/main.sh:

- p6_aws_svc_ec2_elb_listeners_list(load_balancer_name)
- p6_aws_svc_elb_list()


### svc/elbv2:

#### svc/elbv2/main.sh:

- p6_aws_svc_alb_list()
- p6_aws_svc_alb_listeners_list(load_balancer_name)


### svc/glue:

#### svc/glue/crawlers.sh:

- p6_aws_svc_glue_crawlers_arn_list()

#### svc/glue/database.sh:

- p6_aws_svc_glue_databases_arn_list()

#### svc/glue/endpoint.sh:

- p6_aws_svc_glue_crawlers_arn_list()

#### svc/glue/job.sh:

- p6_aws_svc_glue_job_arn_list()

#### svc/glue/table.sh:

- p6_aws_svc_glue_tables_arn_list()


### svc/iam:

#### svc/iam/alias.sh:

- p6_aws_svc_iam_account_alias()

#### svc/iam/instance.sh:

- p6_aws_svc_iam_instance_profiles_list()

#### svc/iam/policy.sh:

- p6_aws_svc_iam_policy_cloudtrail_write(resource)
- p6_aws_svc_iam_policy_s3_cloudtrail_write(trail_bucket, account_id)
- p6_aws_svc_iam_policy_saml(account_id, provider)
- p6_aws_svc_iam_policy_service_write(service)

#### svc/iam/role.sh:

- p6_aws_svc_iam_role_policies(role_name)
- p6_aws_svc_iam_roles_list()

#### svc/iam/user.sh:

- p6_aws_svc_iam_users_list()


### svc/imagebuilder:

#### svc/imagebuilder/main.sh:

- p6_aws_svc_imagebuilder_dc_list()
- p6_aws_svc_imagebuilder_ic_list()
- p6_aws_svc_imagebuilder_images_list()
- p6_aws_svc_imagebuilder_ir_list()
- p6_aws_svc_imagebuilder_pipelines_list()


### svc/kms:

#### svc/kms/key.sh:

- p6_aws_svc_kms_list_aliases()
- p6_aws_svc_kms_list_aliases_aws()
- p6_aws_svc_kms_list_aliases_mine()


### svc/lambda:

#### svc/lambda/function.sh:

- p6_aws_svc_lambda_functions_by_runtime()
- p6_aws_svc_lambda_functions_envs()
- p6_aws_svc_lambda_functions_list()
- p6_aws_svc_lambda_functions_runtimes()


### svc/mwaa:

#### svc/mwaa/env.sh:

- p6_aws_svc_mwaa_environments_arn_list()


### svc/organizations:

#### svc/organizations/account.sh:

- aws_account_id new_account_id = p6_aws_svc_organizations_account_id_from_account_name(account_name)
- p6_aws_svc_organizations_accounts_list()

#### svc/organizations/lz.sh:

- p6_aws_svc_organizations_lz_do(...)

#### svc/organizations/sts.sh:

- p6_aws_svc_organizations_sts_run_as(account_name_or_account_id, ...)
- p6_aws_svc_organizations_sts_su(account_name_or_account_id)
- p6_aws_svc_organizations_sts_su_un()


### svc/rds:

#### svc/rds/instance.sh:

- p6_aws_svc_rds_instance_arns_list()
- p6_aws_svc_rds_pgpassword_from_iam_get(host, username, port)


### svc/route53:

#### svc/route53/resources.sh:

- p6_aws_svc_route53_resources_list(zone)

#### svc/route53/zones.sh:

- p6_aws_svc_route53_zones_hosted_id_from_zone(zone)
- p6_aws_svc_route53_zones_hosted_list()


### svc/route53domains:

#### svc/route53domains/domain.sh:

- p6_aws_svc_route53_domains_details(domain_name, ...)
- p6_aws_svc_route53_domains_list()
- p6_aws_svc_route53_domains_list_not_autorenew()
- p6_aws_svc_route53_domains_list_not_locked()
- p6_aws_svc_route53_domains_nameservers_api(domain_name)
- p6_aws_svc_route53_domains_nameservers_delta(domain_name)
- p6_aws_svc_route53_domains_nameservers_whois(domain_name)


### svc/s3:

#### svc/s3/bucket.sh:

- p6_aws_svc_s3_bucket_list(bucket)
- p6_aws_svc_s3_bucket_policy()
- p6_aws_svc_s3_buckets_list()


### svc/s3api:

#### svc/s3api/bucket.sh:

- p6_aws_svc_s3api_bucket_list_objects_all(bucket)
- p6_aws_svc_s3api_bucket_objects_deleted(bucket)
- p6_aws_svc_s3api_bucket_objects_versions_list(bucket)
- p6_aws_svc_s3api_bucket_policy(bucket)


### svc/secretsmanager:

#### svc/secretsmanager/secret.sh:

- p6_aws_svc_secretsmanager_list()
- p6_aws_svc_secretsmanager_secret_get(name)


### svc/sns:

#### svc/sns/topic.sh:

- p6_aws_svc_sns_topics_list()


### svc/ssm:

#### svc/ssm/document.sh:

- p6_aws_svc_ssm_documents_list()
- p6_aws_svc_ssm_documents_list_aws()
- p6_aws_svc_ssm_documents_list_of()


### svc/stepfunctions:

#### svc/stepfunctions/machine.sh:

- p6_aws_svc_stepfunctions_list()
- p6_aws_svc_stepfunctions_state_machine_show(state_machine, ...)


### svc/sts:

#### svc/sts/account.sh:

- str account_id = p6_aws_svc_sts_account_id()
- str role_name = p6_aws_svc_sts_account_role_name()

#### svc/sts/identity.sh:

- p6_aws_svc_sts_identity_broker_custom_login_url(cred_file)
- p6_aws_svc_sts_whoami()

#### svc/sts/prompt.sh:

- str str = p6_aws_sts_prompt_info(creds)

#### svc/sts/role.sh:

- p6_aws_svc_sts_role_assume(role_arn, role_session_name)
- p6_aws_svc_sts_role_assume_un()
- p6_aws_svc_sts_role_credentials_on(json, role_arn, role_session_name, type)
- p6_aws_svc_sts_role_federation_assume(profile)


### util:

#### util/env.sh:

- p6_aws_util_env_org([val=$P6_AWS_ORG])
- p6_aws_util_env_output([val=json])
- p6_aws_util_env_profile([val=])
- p6_aws_util_env_region([val=us-east-1])
- str config_file = p6_aws_util_env_config_file([org=])
- str cred_file = p6_aws_util_env_shared_credentials_file([org=])

#### util/p6_return.sh:

- str account_id = p6_return_aws_account_id(account_id)
- str arn = p6_return_aws_arn(arn)
- str logical_id = p6_return_aws_logical_id(logical_id)
- str profile = p6_return_aws_profile(profile)
- str resource_id = p6_return_aws_resource_id(resource_id)

#### util/template.sh:

- p6_aws_template_process(infile, ...)



## Hier
```text
.
├── cfg
│   ├── _gen.sh
│   ├── _kinds.sh
│   ├── api.sh
│   ├── debug.sh
│   ├── kinds.sh
│   └── vars.sh
├── cli
│   ├── cli.sh
│   ├── debug.sh
│   ├── organizations.sh
│   ├── prompt.sh
│   └── shortcuts.sh
├── env
│   ├── active.sh
│   ├── saved.sh
│   └── source.sh
├── profile
│   ├── config.sh
│   ├── cred.sh
│   └── debug.sh
├── svc
│   ├── autoscaling
│   │   ├── _lc.sh
│   │   └── asg.sh
│   ├── billingconductor
│   │   └── association.sh
│   ├── cloudformation
│   │   └── stack.sh
│   ├── cloudwatch
│   │   ├── logs.sh
│   │   └── trail.sh
│   ├── codebuild
│   │   └── build.sh
│   ├── codepipeline
│   │   └── pipeline.sh
│   ├── dynamodb
│   │   └── table.sh
│   ├── ec2
│   │   ├── ami.sh
│   │   ├── instance.sh
│   │   ├── key_pair.sh
│   │   ├── lt.sh
│   │   ├── nat.sh
│   │   ├── network.sh
│   │   ├── region.sh
│   │   ├── rtb.sh
│   │   ├── sg.sh
│   │   ├── subnet.sh
│   │   ├── tgw.sh
│   │   ├── volume.sh
│   │   └── vpc.sh
│   ├── ec2instanceconnect
│   │   └── util.sh
│   ├── eks
│   │   └── cluster.sh
│   ├── elb
│   │   └── main.sh
│   ├── elbv2
│   │   └── main.sh
│   ├── glue
│   │   ├── crawlers.sh
│   │   ├── database.sh
│   │   ├── endpoint.sh
│   │   ├── job.sh
│   │   └── table.sh
│   ├── iam
│   │   ├── alias.sh
│   │   ├── instance.sh
│   │   ├── policy.sh
│   │   ├── role.sh
│   │   └── user.sh
│   ├── imagebuilder
│   │   └── main.sh
│   ├── kms
│   │   └── key.sh
│   ├── lambda
│   │   └── function.sh
│   ├── mwaa
│   │   └── env.sh
│   ├── organizations
│   │   ├── account.sh
│   │   ├── lz.sh
│   │   └── sts.sh
│   ├── rds
│   │   └── instance.sh
│   ├── route53
│   │   ├── resources.sh
│   │   └── zones.sh
│   ├── route53domains
│   │   └── domain.sh
│   ├── s3
│   │   └── bucket.sh
│   ├── s3api
│   │   └── bucket.sh
│   ├── secretsmanager
│   │   └── secret.sh
│   ├── sns
│   │   └── topic.sh
│   ├── ssm
│   │   └── document.sh
│   ├── stepfunctions
│   │   └── machine.sh
│   └── sts
│       ├── account.sh
│       ├── debug.sh
│       ├── identity.sh
│       ├── prompt.sh
│       └── role.sh
└── util
    ├── debug.sh
    ├── env.sh
    ├── p6_return.sh
    └── template.sh

36 directories, 79 files
```
## Author

Philip M . Gollucci <pgollucci@p6m7g8.com>
