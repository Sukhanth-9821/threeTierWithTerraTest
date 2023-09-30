module "vpc" {
  source = "./vpc"
  vpcname = var.vpcname
  vpccidr = var.vpccidr
}

module "subnet" {
  source = "./Subnet"
  vpcid = module.vpc.vpcid
  webcidr = var.webcidr
  appcidr = var.appcidr
  dbcidr = var.dbcidr
}

module "Igw"{
  source = "./IGW"
  vpcid = module.vpc.vpcid
  Igw_name = var.Igw_name
}

module "routetable"{
  source = "./RouteTable"
  vpcid = module.vpc.vpcid
  subnetid1 = module.subnet.websnetidA
  subnetid2 = module.subnet.websnetidB 
  gatewayid = module.Igw.aws_internet_gateway_id
}

