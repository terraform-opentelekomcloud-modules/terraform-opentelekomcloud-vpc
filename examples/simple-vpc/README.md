# Simple VPC

Configuration in this directory creates a VPC and a Subnet resource which may be sufficient for development environment.

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which can cost money. Run `terraform destroy` when you don't need these resources.

## Requirements

| Name                                                                              | Version    |
| --------------------------------------------------------------------------------- | ---------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform)         | >= 0.12.21 |
| <a name="requirement_opentelekomcloud"></a> [aws](#requirement\_opentelekomcloud) | >= 1.23.6  |

## Providers

No providers.

## Modules

| Name                                          | Source | Version |
| --------------------------------------------- | ------ | ------- |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ../../ |         |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name                                                                                                 | Description                  |
| ---------------------------------------------------------------------------------------------------- | ---------------------------- |
| <a name="output_subnet_cidr_block"></a> [private\_subnet\_cidr\_block](#output\_subnet\_cidr\_block) | The CIDR block of the Subnet |
| <a name="output_subnet_id"></a> [public\_subnet\_id](#output\_subnet\_id)                            | The ID of the Subnet         |
| <a name="output_vpc_cidr_block"></a> [vpc\_cidr\_block](#output\_vpc\_cidr\_block)                   | The CIDR block of the VPC    |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id)                                             | The ID of the VPC            |
