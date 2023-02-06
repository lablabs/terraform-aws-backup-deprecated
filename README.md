# AWS Backup Terraform module

[<img src="https://lablabs.io/static/ll-logo.png" width=350px>](https://lablabs.io/)

We help companies build, run, deploy and scale software and infrastructure by embracing the right technologies and principles. Check out our website at <https://lablabs.io/>

---

[![Terraform validate](https://github.com/lablabs/terraform-aws-eks-<$addon-name>/actions/workflows/validate.yaml/badge.svg)](https://github.com/lablabs/terraform-aws-eks-<$addon-name>/actions/workflows/validate.yaml)
[![pre-commit](https://github.com/lablabs/terraform-aws-<$addon-name>/actions/workflows/pre-commit.yml/badge.svg)](https://github.com/lablabs/terraform-aws-eks-<$addon-name>/actions/workflows/pre-commit.yml)

## Description

A Terraform module to provision AWS Backup in cross account environment


## Examples

See [Basic example](examples/basic/README.md) for further information.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.19.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_label"></a> [label](#module\_label) | cloudposse/label/null | 0.25.0 |
| <a name="module_source_kms_key"></a> [source\_kms\_key](#module\_source\_kms\_key) | cloudposse/kms-key/aws | 0.12.1 |
| <a name="module_source_role"></a> [source\_role](#module\_source\_role) | cloudposse/iam-role/aws | 0.17.0 |
| <a name="module_target_kms_key"></a> [target\_kms\_key](#module\_target\_kms\_key) | cloudposse/kms-key/aws | 0.12.1 |
| <a name="module_target_role"></a> [target\_role](#module\_target\_role) | cloudposse/iam-role/aws | 0.17.0 |

## Resources

| Name | Type |
|------|------|
| [aws_backup_plan.source](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/backup_plan) | resource |
| [aws_backup_selection.source](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/backup_selection) | resource |
| [aws_backup_vault.source](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/backup_vault) | resource |
| [aws_backup_vault.target](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/backup_vault) | resource |
| [aws_backup_vault_policy.source](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/backup_vault_policy) | resource |
| [aws_backup_vault_policy.target](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/backup_vault_policy) | resource |
| [aws_caller_identity.source](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_caller_identity.target](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.kms_source_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.kms_target_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.source_vault](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.target_vault](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_tags"></a> [aws\_tags](#input\_aws\_tags) | Additional tags (e.g. `map('BusinessUnit','XYZ')` | `map(string)` | `{}` | no |
| <a name="input_backup_plans"></a> [backup\_plans](#input\_backup\_plans) | Backup plans config along with rule and resources setup | `any` | `[]` | no |
| <a name="input_is_cross_acount_backup_enabled"></a> [is\_cross\_acount\_backup\_enabled](#input\_is\_cross\_acount\_backup\_enabled) | Create backup vault on different account and turn on copy action to this vault (provider.target needs to be set) | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of module resources | `string` | `"aws-backup"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace name | `string` | `""` | no |
| <a name="input_stage"></a> [stage](#input\_stage) | Stage name | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_source_backup_vault_arn"></a> [source\_backup\_vault\_arn](#output\_source\_backup\_vault\_arn) | Backup Vault ARN of source backup vault |
| <a name="output_source_backup_vault_id"></a> [source\_backup\_vault\_id](#output\_source\_backup\_vault\_id) | Backup Vault ID of source backup vault |
| <a name="output_target_backup_vault_arn"></a> [target\_backup\_vault\_arn](#output\_target\_backup\_vault\_arn) | Backup Vault ARN of target backup vault |
| <a name="output_target_backup_vault_id"></a> [target\_backup\_vault\_id](#output\_target\_backup\_vault\_id) | Backup Vault ID of target backup vault |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Contributing and reporting issues

Feel free to create an issue in this repository if you have questions, suggestions or feature requests.

### Validation, linters and pull-requests

We want to provide high quality code and modules. For this reason we are using
several [pre-commit hooks](.pre-commit-config.yaml) and
[GitHub Actions workflows](.github/workflows/). A pull-request to the
main branch will trigger these validations and lints automatically. Please
check your code before you will create pull-requests. See
[pre-commit documentation](https://pre-commit.com/) and
[GitHub Actions documentation](https://docs.github.com/en/actions) for further
details.

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.
