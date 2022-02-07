//// module is a container contains of all resources and can call other modules.which lets us include the child modules resources into configuration in concise way.
////we add source link in module if it is git or any other remote repository
//// simply mentioning module in root file is stating that all the other resources are here only.(just to keep code dry)and also we have to tell which are the varibles we are calling from that repository
module "app-module" {
  source           = "git::https://github.com/siddhudeva/terraform_mutable_commom_infra.git"
  INSTANCES_NO     = var.INSTANCES_NO
  INSTANCES_TYPE   = var.INSTANCES_TYPE
  COMPONENT        = var.COMPONENT
  ENV              = var.ENV
  APP_VERSION      = var.APP_VERSION
  APP_PORT         = 8080
  LB_RULE_PRIORITY = 200
  LB_PRIVATE       = true
}