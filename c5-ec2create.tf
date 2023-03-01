# creation of the ec2 instance 

resource "aws_instance" "ec2tf" {
  ami                    = data.aws_ami.amzlinux.id
  instance_type          = var.instance_type
  key_name               = "awslogin"
  count                  = 1
  user_data              = file("apache-install.sh")
  vpc_security_group_ids = [aws_security_group.sg-webserver.id]

  tags = {
    "Name"  = "ec2tf-${count.index}"
    "owner" = "saurabh"
  }
}
