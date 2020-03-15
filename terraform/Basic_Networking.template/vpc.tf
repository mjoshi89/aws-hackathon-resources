resource "aws_vpc" "hackathon-vpc" {
    cidr_block = "10.50.0.0/16"
    enable_dns_support = "true"
    enable_dns_hostnames = "true"
    enable_classiclink = "false"
    instance_tenancy = "default"
    tags {
        Name = "hackathon-vpc"
    }
}

resource "aws_subnet" "hackathon-subnet-public-1" {
    vpc_id = "${aws_vpc."hackathon-vpc.id}"
    cidr_block = "10.50.1.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "eu-west-2a"
    tags {
        Name = "hackathon-subnet-public-1"
    }
}

resource "aws_subnet" "hackathon-subnet-public-2" {
    vpc_id = "${aws_vpc."hackathon-vpc.id}"
    cidr_block = "10.50.3.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "eu-west-2b"
    tags {
        Name = "hackathon-subnet-public-2"
    }
}

resource "aws_subnet" "hackathon-subnet-public-3" {
    vpc_id = "${aws_vpc."hackathon-vpc.id}"
    cidr_block = "10.50.5.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "eu-west-2c"
    tags {
        Name = "hackathon-subnet-public-3"
    }
}

resource "aws_subnet" "hackathon-subnet-private-1" {
    vpc_id = "${aws_vpc."hackathon-vpc.id}"
    cidr_block = "10.50.2.0/24"
    map_public_ip_on_launch = "false"
    availability_zone = "eu-west-2a"
    tags {
        Name = "hackathon-subnet-private-1"
    }
}

resource "aws_subnet" "hackathon-subnet-private-2" {
    vpc_id = "${aws_vpc."hackathon-vpc.id}"
    cidr_block = "10.50.4.0/24"
    map_public_ip_on_launch = "false"
    availability_zone = "eu-west-2b"
    tags {
        Name = "hackathon-subnet-private-2"
    }
}

resource "aws_subnet" "hackathon-subnet-private-3" {
    vpc_id = "${aws_vpc."hackathon-vpc.id}"
    cidr_block = "10.50.6.0/24"
    map_public_ip_on_launch = "false"
    availability_zone = "eu-west-2c"
    tags {
        Name = "hackathon-subnet-private-3"
    }
}
