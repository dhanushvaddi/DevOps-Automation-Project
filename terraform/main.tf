provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "main_subnet" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = "10.0.1.0/24"
}

resource "aws_instance" "jenkins_master" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main_subnet.id
  key_name      = ""
  tags = {
    Name = "JenkinsMaster"
  }
}

resource "aws_instance" "k8s_master" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main_subnet.id
  key_name      = ""
  tags = {
    Name = "K8sMaster"
  }
}

resource "aws_instance" "k8s_slave" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main_subnet.id
  key_name      = ""
  tags = {
    Name = "K8sSlave"
  }
}
