#identity_center_dpc
tfc_hostname          = "app.terraform.io"
tfc_organization_name = "CT_TEST_KB"
tfc_project_name      = "Testkkb"
dpc_name              = "identity_center"
vcs_repo_identifier   = "siakan1107/infra-121754699974-identitycenter"
managed_policies      = ["AdministratorAccess", "IAMFullAccess"]

# managed_policies        = []
 custom_policies = {test1 =file("policy/test1.json"), test2=file("policy/test2.json")}


