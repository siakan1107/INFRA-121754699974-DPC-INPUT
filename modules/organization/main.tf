module "organizatioin" {
  source = "github.com/siakan1107/INFRA-121754699974-DPC"

  tfc_hostname            = var.tfc_hostname
  tfc_organization_name   = var.tfc_organization_name
  tfc_project_name        = var.tfc_project_name
  dpc_name                = var.dpc_name
  vcs_repo_identifier     = var.vcs_repo_identifier
  managed_policies        = var.managed_policies
  custom_policies         = var.custom_policies
}