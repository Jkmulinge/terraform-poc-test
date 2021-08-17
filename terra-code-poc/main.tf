resource "aws_instance" "app_server" {
  count = 3 
  ami           =  var.ami 
  instance_type = var.instance_type 
  tags = {
   Name = "Terra-machine-${count.index}"
  }
}
