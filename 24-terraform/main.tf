
// VPC
// https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc
resource "aws_vpc" "myvpc" {
  // 65,536 addresses
  cidr_block = var.cidr
}

// Subnet
// https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet
resource "aws_subnet" "mysub1" {
  vpc_id     = aws_vpc.myvpc.id
  // 256 addresses
  cidr_block = "10.0.0.0/24"
  // Availability Zone A
  availability_zone = "us-east-1a"
  // Assign a public IPv4
  map_public_ip_on_launch = true
}

resource "aws_subnet" "mysub2" {
  vpc_id     = aws_vpc.myvpc.id
  // 256 addresses
  cidr_block = "10.0.1.0/24"
  // Availability Zone B
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true
}

// Internet Gateway
// https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway
resource "aws_internet_gateway" "myigw" {
  vpc_id = aws_vpc.myvpc.id
}

// Route Table
// https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table
resource "aws_route_table" "myrt" {
  vpc_id = aws_vpc.myvpc.id

  route {
    // Everything inside this VPC should be routed locally
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myigw.id
  }
}

// Route Table Association
// https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association
resource "aws_route_table_association" "myrta1" {
  subnet_id      = aws_subnet.mysub1.id
  route_table_id = aws_route_table.myrt.id
}

resource "aws_route_table_association" "myrta2" {
  subnet_id      = aws_subnet.mysub2.id
  route_table_id = aws_route_table.myrt.id
}
