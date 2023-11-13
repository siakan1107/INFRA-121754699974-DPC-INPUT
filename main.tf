module "openIdConnect" {
  # source = "github.com/siakan1107/INFRA-121754699974-DPC/modules/openIdConnect"
  source = "./task/openIdconnect"
}


module "identityCenter" {
  source = "github.com/siakan1107/INFRA-121754699974-DPC"

  tfc_hostname          = "app.terraform.io"
  tfc_organization_name = "CT_TEST_KB"
  tfc_project_name      = "Testkkb"
  dpc_name              = "identityCenter"
  vcs_repo_identifier   = "siakan1107/infra-121754699974-identitycenter"
  managed_policies      = ["AdministratorAccess", "IAMFullAccess"]
  custom_policies       = { test1 = file("${path.module}/task/policies/test1.json"), test2 = file("${path.module}/task/policies/test2.json") }

  tfc_provider_arn            = module.openIdConnect.tfc_provider_arn
  tfc_provider_client_id_list = [module.openIdConnect.tfc_provider_client_id_list]

}

module "organizatioin" {
  source = "github.com/siakan1107/INFRA-121754699974-DPC"

  tfc_hostname          = "app.terraform.io"
  tfc_organization_name = "CT_TEST_KB"
  tfc_project_name      = "Testkkb"
  dpc_name              = "organization"
  vcs_repo_identifier   = "siakan1107/infra-121754699974-organization"
  managed_policies      = ["AWSOrganizationsFullAccess"]
  custom_policies       = {}

  tfc_provider_arn            = module.openIdConnect.tfc_provider_arn
  tfc_provider_client_id_list = [module.openIdConnect.tfc_provider_client_id_list]
}