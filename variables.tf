variable "tfc_hostname" {
  type        = string
  default     = "app.terraform.io"
  description = "The hostname of the TFC or TFE instance you'd like to use with AWS"
}

variable "tfc_organization_name" {
  type        = string
  default     = "CT_TEST_KB"
  description = "The name of your Terraform Cloud organization"
}

variable "tfc_project_name" {
  type        = string
  default     = "Testkkb"
  description = "The name of your Terraform Cloud project"
}

variable "dpc_name" {
  type        = string
  default     = "identity_center"
  description = "The name of your dpc"
}

variable "vcs_repo_identifier" {
  type        = string
  default     = "siakan1107/infra-121754699974-identitycenter"
  description = "The name of vcs_repo_identifier"
}

variable "vcs_repo_oauth_token_id" {
  type        = string
  default     = "ot-gZ8WnNTbRFDhkJtn"
  description = "The name of your vcs_repo_oauth_token_id"
}

variable "managed_policies" {
  type = list(string)
  #   default     = ["AdministratorAccess", "IAMFullAccess"]
  description = "The name of your managed_policie"
}

variable "custom_policies" {
  type        = list(string)
  default     = ["test1", "test2"]
  description = "The name of your custom_policies"
}

