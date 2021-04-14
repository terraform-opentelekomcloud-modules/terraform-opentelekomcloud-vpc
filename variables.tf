##############
# Common Vars
##############

variable "prefix" {
  type        = string
  description = "(optional) prefix for basic network infra"
}

variable "tags" {
  type        = map(string)
  description = "(optional) the key/value pairs to associate with the VPC and Subnet"
}

###########
# VPC Vars
###########

variable "shared" {
  type        = bool
  description = "(optional) SNAT should be used or not"

  default = false
}

variable "vpc_cidr" {
  type        = string
  description = "(required) representing IP range for the subnet"
}

##############
# Subnet Vars
##############

variable "subnet_cidr" {
  type        = string
  description = "(required) representing IP range for the subnet"
}

variable "gateway_ip" {
  type        = string
  description = "(required) representing gateway of the subnet"
}

variable "dns_nameservers" {
  type        = list(string)
  description = "(optional) an array of DNS name servers used by hosts in the subnet"

  default = [
    "100.125.4.25",
    "100.125.129.199"
  ]
}

variable "ntp_addresses" {
  type        = list(string)
  description = "(optional) array of NTP server addresses configured for the subnet"

  default = [
    "10.100.0.33",
    "10.100.0.34"
  ]
}

variable "availability_zone" {
  type        = string
  description = "(optional) identifies the availability zone (AZ) to which the subnet belongs"
}

variable "dhcp_enable" {
  type        = bool
  description = "(optional) DHCP function is enabled for the subnet"
}
