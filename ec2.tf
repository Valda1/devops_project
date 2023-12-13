resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  count = 2

  tags = {
    Name = "HelloWorld"
  }
}