locals {
  dns_word = var.env == "prod" ? "www" : var.env 
  dns_name = var.component == "frontend" ? "${local.dns_word}.${var.dns_domain}" : "${var.component}-${var.env}.${var.dns_domain}"
  
  parameters = concat([ var.component, ], var.parameters)
}
# instead of giving the docdb, elasticache parameters here we want to get from the app module so that only required one will be accessed