#identity_center_dpc
tfc_hostname          = "app.terraform.io"
tfc_organization_name = "CT_TEST_KB"
tfc_project_name      = "Testkkb"
dpc_name              = "identity_center"
vcs_repo_identifier   = "siakan1107/infra-121754699974-identitycenter"
managed_policies      = ["AdministratorAccess", "IAMFullAccess"]
# managed_policies        = []
custom_policies = { 
 choi = <<EOF
 jsonencode(
        {
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
})
    EOF
} 

#oauth_token_id = "ot-gZ8WnNTbRFDhkJtn"

