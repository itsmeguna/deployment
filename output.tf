output "vpc_id" {
  value = module.VPC.vpc_id
}

output "vpc_public_subnets" {
  value = module.VPC.public_subnets
}

output "vpc_private_subnets" {
  value = module.VPC.private_subnets
}
output "TestMachine01" {
  value = module.ec2-instance[0].public_ip
}
output "instance_id" {
   value = [for instance in module.ec2-instance: instance.id]
}

