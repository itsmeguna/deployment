module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.2.0"

  count                       = length(var.instance_name)
  subnet_id                   = module.VPC.public_subnets[0]
  instance_type               = var.instance_type
  ami                         = var.ami
  vpc_security_group_ids      = [aws_security_group.sg1.id]
  user_data                   = file("user-data.sh")
  associate_public_ip_address = true
  key_name                    = var.key_name
  tags = merge(
    {
       Name = var.instance_name[count.index]
    },
    var.ec2_tags
   )

}
