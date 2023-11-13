module "openIdConnect" {
  source = "github.com/siakan1107/INFRA-121754699974-DPC/modules/openIdConnect"
}

output "tfc_provider_arn" {
  value = module.openIdConnect.tfc_provider_arn
}

output "tfc_provider_client_id_list" {
  value = module.openIdConnect.tfc_provider_arn
}