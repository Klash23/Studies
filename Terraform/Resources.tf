resource "aws_instance" "Web" {
  ami             = "ami-024fc608af8f886bc"
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.public.id
  key_name        = "aws_key_pair.kp.key_name"
  security_groups = ["aws_security_group.security.id"]
}