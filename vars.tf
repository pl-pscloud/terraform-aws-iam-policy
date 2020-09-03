variable "pscloud_env" {}
variable "pscloud_company" {}

variable "pscloud_policy_name" {}
variable "pscloud_policy" {}

variable "pscloud_attach" { default = false }
variable "pscloud_attach_users" { default = [] }
variable "pscloud_attach_groups" { default = [] }
variable "pscloud_attach_roles" { default = [] }