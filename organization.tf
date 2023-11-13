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