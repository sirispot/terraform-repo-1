# 9. create ubuntu server and install/enable apache2

resource "aws_instance" "web-server-instance" {
  ami               = "ami-09d56f8956ab235b3"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  key_name          = "for-terraform"

  network_interface {
    device_index         = 0
    network_interface_id = aws_network_interface.web-server-nic.id
  }
