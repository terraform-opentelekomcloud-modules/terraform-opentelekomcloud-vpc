# OpenTelekomCloud VPC Terraform module

Terraform module which creates VPC resources on OpenTelekomCloud.

These types of resources are supported:

* [VPC](https://registry.terraform.io/providers/opentelekomcloud/opentelekomcloud/latest/docs/resources/vpc_v1)
* [Subnet](https://registry.terraform.io/providers/opentelekomcloud/opentelekomcloud/latest/docs/resources/vpc_subnet_v1)

## Terraform versions

Terraform 0.12 and newer.

## Usage

```hcl
module "vpc" {
  source = "terraform-opentelekomcloud-modules/vpc/opentelekomcloud"

  prefix = "infra"
  cidr = "10.0.0.0/16"

  availability_zone = "eu-de-01"

  vpc_cidr          = "10.0.0.0/24"
  subnet_cidr       = "10.0.0.0/24"
  gateway_ip        = "10.0.0.1"
  ntp_addresses     = ["10.100.0.33", "10.100.0.34"]

  dhcp_enable = true
  snat_enable = true

  tags = {
    infra = "vpc"
    muh = "dev"
  }
}
```


## Examples

TBD

## Requirements

| Name                                                                                           | Version    |
| ---------------------------------------------------------------------------------------------- | ---------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform)                      | >= 0.12.21 |
| <a name="requirement_opentelekomcloud"></a> [opentelekomcloud](#requirement\_opentelekomcloud) | >= 1.23.6  |

## Modules

No modules.

## Resources

| Name                                                                                                                                                 | Type     |
| ---------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [opentelekomcloud_vpc_v1.this](https://registry.terraform.io/providers/opentelekomcloud/opentelekomcloud/latest/docs/resources/vpc_v1)               | resource |
| [opentelekomcloud_vpc_subnet_v1.this](https://registry.terraform.io/providers/opentelekomcloud/opentelekomcloud/latest/docs/resources/vpc_subnet_v1) | resource |

## Inputs

| Name                                                                                    | Description                                                | Type           | Default                                                      | Required |
| --------------------------------------------------------------------------------------- | ---------------------------------------------------------- | -------------- | ------------------------------------------------------------ | :------: |
| <a name="input_prefix"></a> [prefix](#input\_prefix)                                    | Prefix for basic network infra.                            | `string`       | `"default"`                                                  |    no    |
| <a name="input_tags"></a> [tags](#input\_tags)                                          | The key/value pairs to associate with the VPC and Subnet   | `map(string)`  | `{}`                                                         |    no    |
| <a name="input_snat_enable"></a> [snat\_enable](#input\_snat\_enable)                   | SNAT should be used or not                                 | `bool`         | `false`                                                      |    no    |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr)                            | IP range for the VPC                                       | `string`       | `null`                                                       |   yes    |
| <a name="input_subnet_cidr"></a> [subnet\_cidr](#input\_subnet\_cidr)                   | IP range for the subnet                                    | `string`       | `null`                                                       |   yes    |
| <a name="input_gateway_ip"></a> [gateway\_ip](#input\_gateway\_ip)                      | The gateway of the subnet                                  | `string`       | `null`                                                       |   yes    |
| <a name="input_dns_nameservers"></a> [dns\_nameservers](#input\_dns\_nameservers)       | An array of DNS name servers used by hosts in the subnet   | `list(string)` | <pre>[<br>  "100.125.4.25",<br>  "100.125.129.199"<br>]<pre> |    no    |
| <a name="input_ntp_addresses"></a> [ntp\_addresses](#input\_ntp\_addresses)             | An array of NTP server addresses configured for the subnet | `list(string)` | <pre>[<br>  "10.100.0.33",<br>  "10.100.0.34"<br>]<pre>      |    no    |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | The availability zone (AZ) to which the subnet belongs     | `string`       | `"eu-de-01"`                                                 |    no    |
| <a name="input_dhcp_enable"></a> [dhcp\_enable](#input\_dhcp\_enable)                   | DHCP function is enabled for the subnet                    | `bool`         | `null`                                                       |    no    |

## Outputs

| Name                                                                                        | Description                             |
| ------------------------------------------------------------------------------------------- | --------------------------------------- |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id)                                    | The ID of the VPC                       |
| <a name="output_vpc_name"></a> [vpc\_name](#output\_vpc\_name)                              | The Name of the VPC                     |
| <a name="output_vpc_cidr_block"></a> [vpc\_cidr\_block](#output\_vpc\_cidr\_block)          | The CIDR block of the VPC               |
| <a name="output_vpc_enable_snat"></a> [vpc\_enable\_snat](#output\_vpc\_enable\_snat)       | The SNAT function is enabled in the VPC |
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id)                           | The ID of the Subnet                    |
| <a name="output_subnet_name"></a> [subnet\_name](#output\_subnet\_name)                     | The Name of the Subnet                  |
| <a name="output_subnet_cidr_block"></a> [subnet\_cidr\_block](#output\_subnet\_cidr\_block) | The CIDR block of the Subnet            |
| <a name="output_subnet_dns"></a> [subnet\_dns](#output\_subnet\_dns)                        | The DNS name servers of the Subnet      |


## Authors

Module managed by [Rodion Gyrbu](https://github.com/lego963).

## License

Apache 2 Licensed. See LICENSE for full details.
