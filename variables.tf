
variable "tfc_hostname" {
  type        = string
  default     = "app.terraform.io"
  description = "The hostname of the TFC or TFE instance you'd like to use with AWS"
}

variable "region" {
  default     = "ap-northeast-2"
  type        = string
  description = "The region from which this module will be executed. This MUST be the same region as Control Tower is deployed."
  validation {
    condition     = can(regex("(us(-gov)?|ap|ca|cn|eu|sa|me|af)-(central|(north|south)?(east|west)?)-\\d", var.region))
    error_message = "Variable var: region is not valid."
  }
}
