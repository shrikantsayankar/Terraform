provider "aws" {
  region = "us-east-1"

}

resource "aws_instance" "web_server" {
  ami           = "ami-0fa3fe0fa7920f68e"
  instance_type = "t2.micro"
  tags = {
    Name = "webserver"
  }

}

output "web_server_private_ip" {
  value = aws_instance.web_server.private_ip

}