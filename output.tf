output "vpcid"{
   value = module.vpc.vpcid
}

output "vpccidroutput"{
   value = module.vpc.vpccidroutput
}

output "websubnetcidrA"{
   value =module.subnet.websnetcidrA
}

output "appsubnetcidrA"{
   value =module.subnet.appsnetcidrA
}

output "dbsubnetcidrA"{
   value =module.subnet.dbsnetcidrA
}

output "websubnetcidrB"{
   value =module.subnet.websnetcidrB
}

output "appsubnetcidrB"{
   value =module.subnet.appsnetcidrB
}

output "dbsubnetcidrB"{
   value =module.subnet.dbsnetcidrB
}

