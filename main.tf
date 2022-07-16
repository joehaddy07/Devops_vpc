resource "aws_vpc" "joe07_vpc" {
  cidr_block       = var.vpc-cidr
  instance_tenancy = "default"

  tags = {
    Name = "dev-vpc"
  }
}

resource "aws_internet_gateway" "dev_igw" {
  vpc_id = aws_vpc.joe07_vpc.id

  tags = {
    Name = "dev igw"
  }
}

resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.joe07_vpc.id
  cidr_block              = "${var.public_subnet_1_cidr}"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "public subnet 1"
  }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.joe07_vpc.id
  cidr_block              = "${var.public_subnet_2_cidr}"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = "true"


  tags = {
    Name = "public subnet 2"
  }
}

resource "aws_route_table" "rt-dev" {
  vpc_id = aws_vpc.joe07_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dev_igw.id
  }

  tags = {
    Name = "rt dev"
  }
}

resource "aws_route_table_association" "rt-association-1" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.rt-dev.id
}

resource "aws_route_table_association" "rt-association-2" {
  subnet_id      = aws_subnet.public_subnet_2.id
  route_table_id = aws_route_table.rt-dev.id
}