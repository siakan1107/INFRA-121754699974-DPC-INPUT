module "identityCenter" {
  source = "github.com/siakan1107/INFRA-121754699974-DPC"

  tfc_hostname          = "app.terraform.io"
  tfc_organization_name = "CT_TEST_KB"
  tfc_project_name      = "Testkkb"
  dpc_name              = "identityCenter"
  vcs_repo_identifier   = "siakan1107/infra-121754699974-identitycenter"
  managed_policies      = ["AdministratorAccess", "IAMFullAccess"]
  custom_policies       = { test1 = file("${path.module}/policy/test1.json"), test2 = file("${path.module}/policy/test1.json") }
}