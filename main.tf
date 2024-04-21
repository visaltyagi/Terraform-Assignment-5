provider "aws" {
  region = "us-east-2"
  access_key = "AKIAQRH4ND34WNGRNWOP"
  secret_key = "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"
}

resource "aws_instance" "assignment-5" {
 ami = "ami-0b4750268a88e78e0"
 instance_type = "t2.micro"
 key_name = "Terraform"
 user_data = "${file("install-apache2.sh")}"

 tags = {
   Name = "assignment-5"
 }

}
output "IPv4" {
      value = aws_instance.assignment-5.public_ip
}
