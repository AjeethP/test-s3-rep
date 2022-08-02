resource "aws_instance" "test_ec2one" {
  ami           = "ami-090fa75af13c156b4"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  tags = {
    Name = "test_ectwo_one"
  }
}