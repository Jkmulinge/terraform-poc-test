resource "aws_instance" "app_server" {
  count = 3 
  ami           =  var.ami "ami-0d5eff06f840b45e9"
  instance_type = var.instance_type "t1.micro"
  tags = {
   Name = "Terra-machine-${count.index}"
  }
}
