# aws_ecs_fargate_service
Wematch Terraform module for deploying Fargate services

## [!] DO NOT rename this repo or everything will die +) 

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_main_container_definition"></a> [main\_container\_definition](#module\_main\_container\_definition) | cloudposse/ecs-container-definition/aws | 0.58.1 |

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.ecs_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_cloudwatch_log_subscription_filter.lambda_logfilter](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_subscription_filter) | resource |
| [aws_ecs_service.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service) | resource |
| [aws_ecs_task_definition.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_definition) | resource |
| [aws_lb_listener.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_lb_target_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) | resource |
| [aws_service_discovery_service.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/service_discovery_service) | resource |
| [aws_acm_certificate.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/acm_certificate) | data source |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_lb.passed_on](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/lb) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |
| [aws_route53_zone.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_containers"></a> [additional\_containers](#input\_additional\_containers) | Additional containers definition | `list` | `[]` | no |
| <a name="input_aws_lb_arn"></a> [aws\_lb\_arn](#input\_aws\_lb\_arn) | n/a | `any` | n/a | yes |
| <a name="input_aws_lb_certificate_arn"></a> [aws\_lb\_certificate\_arn](#input\_aws\_lb\_certificate\_arn) | n/a | `any` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | n/a | `string` | n/a | yes |
| <a name="input_command"></a> [command](#input\_command) | n/a | `list(string)` | `null` | no |
| <a name="input_container_cpu"></a> [container\_cpu](#input\_container\_cpu) | n/a | `number` | `256` | no |
| <a name="input_container_cpu_high_threshold"></a> [container\_cpu\_high\_threshold](#input\_container\_cpu\_high\_threshold) | n/a | `number` | `30` | no |
| <a name="input_container_cpu_low_threshold"></a> [container\_cpu\_low\_threshold](#input\_container\_cpu\_low\_threshold) | n/a | `number` | `60` | no |
| <a name="input_container_memory"></a> [container\_memory](#input\_container\_memory) | n/a | `number` | `512` | no |
| <a name="input_desired_count"></a> [desired\_count](#input\_desired\_count) | n/a | `number` | `1` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | n/a | `any` | n/a | yes |
| <a name="input_ecr_account_id"></a> [ecr\_account\_id](#input\_ecr\_account\_id) | n/a | `any` | n/a | yes |
| <a name="input_ecr_region"></a> [ecr\_region](#input\_ecr\_region) | n/a | `any` | n/a | yes |
| <a name="input_entrypoint"></a> [entrypoint](#input\_entrypoint) | n/a | `list(string)` | `null` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | List of Environment Variables | <pre>list(object({<br>    name  = any<br>    value = any<br>  }))</pre> | `[]` | no |
| <a name="input_external_port"></a> [external\_port](#input\_external\_port) | n/a | `number` | `443` | no |
| <a name="input_health_check_grace_period_seconds"></a> [health\_check\_grace\_period\_seconds](#input\_health\_check\_grace\_period\_seconds) | n/a | `number` | `null` | no |
| <a name="input_image_name"></a> [image\_name](#input\_image\_name) | n/a | `string` | `"nginx"` | no |
| <a name="input_image_version"></a> [image\_version](#input\_image\_version) | n/a | `string` | `"latest"` | no |
| <a name="input_launch_type"></a> [launch\_type](#input\_launch\_type) | n/a | `string` | `"FARGATE"` | no |
| <a name="input_logdna_lambda_logs_arn"></a> [logdna\_lambda\_logs\_arn](#input\_logdna\_lambda\_logs\_arn) | n/a | `any` | n/a | yes |
| <a name="input_max_capacity"></a> [max\_capacity](#input\_max\_capacity) | n/a | `number` | `1` | no |
| <a name="input_min_capacity"></a> [min\_capacity](#input\_min\_capacity) | n/a | `number` | `1` | no |
| <a name="input_mount_points"></a> [mount\_points](#input\_mount\_points) | Container mount points. This is a list of maps, where each map should contain a `containerPath` and `sourceVolume` | <pre>list(object({<br>    containerPath = string<br>    sourceVolume  = string<br>    readOnly      = bool<br>  }))</pre> | `[]` | no |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | n/a | `any` | n/a | yes |
| <a name="input_public"></a> [public](#input\_public) | n/a | `bool` | `false` | no |
| <a name="input_retention_in_days"></a> [retention\_in\_days](#input\_retention\_in\_days) | n/a | `number` | `7` | no |
| <a name="input_secrets"></a> [secrets](#input\_secrets) | List of Secrets | <pre>list(object({<br>    name      = string<br>    valueFrom = string<br>  }))</pre> | `[]` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | n/a | `any` | n/a | yes |
| <a name="input_service_discovery_id"></a> [service\_discovery\_id](#input\_service\_discovery\_id) | n/a | `string` | `""` | no |
| <a name="input_service_image"></a> [service\_image](#input\_service\_image) | Full ECR Url. Example: 000000000000.dkr.ecr.us-west-2.amazonaws.com/repo\_name:image\_version | `string` | `null` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | n/a | `string` | n/a | yes |
| <a name="input_service_port"></a> [service\_port](#input\_service\_port) | n/a | `number` | `8080` | no |
| <a name="input_standard_tags"></a> [standard\_tags](#input\_standard\_tags) | n/a | `map(string)` | n/a | yes |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | n/a | `any` | n/a | yes |
| <a name="input_task_cpu"></a> [task\_cpu](#input\_task\_cpu) | n/a | `number` | `256` | no |
| <a name="input_task_memory"></a> [task\_memory](#input\_task\_memory) | n/a | `number` | `512` | no |
| <a name="input_task_role_arn"></a> [task\_role\_arn](#input\_task\_role\_arn) | n/a | `string` | `null` | no |
| <a name="input_volumes"></a> [volumes](#input\_volumes) | Task volume definitions as list of configuration objects | <pre>list(object({<br>    name = string<br>    efs_volume_configuration = list(object({<br>      file_system_id = string<br>      root_directory = string<br>    }))<br>  }))</pre> | `[]` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | n/a | `any` | n/a | yes |
| <a name="input_wenv"></a> [wenv](#input\_wenv) | n/a | `string` | `"fargate"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_service_name"></a> [service\_name](#output\_service\_name) | n/a |
| <a name="output_service_port"></a> [service\_port](#output\_service\_port) | n/a |

