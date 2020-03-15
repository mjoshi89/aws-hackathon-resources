resource "aws_internet_gateway" "hackathon-igw" {
    vpc_id = "${aws_vpc.hackathon-vpc.id}"
    tags {
        Name = "hackathon-igw"
    }
}

resource "aws_route_table" "hackathon-public-crt" {
    vpc_id = "${aws_vpc.main-vpc.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.hackathon-igw.id}"
    }

    tags {
        Name = "hackathon-public-crt"
    }
}

resource "aws_route_table_association" "hackathon-crta-public-subnet-1"{
    subnet_id = "${aws_subnet.hackathon-subnet-public-1.id}"
    route_table_id = "${aws_route_table.hackathon-public-crt.id}"
}

resource "aws_route_table_association" "hackathon-crta-public-subnet-1"{
    subnet_id = "${aws_subnet.hackathon-subnet-public-2.id}"
    route_table_id = "${aws_route_table.hackathon-public-crt.id}"
}

resource "aws_route_table_association" "hackathon-crta-public-subnet-1"{
    subnet_id = "${aws_subnet.hackathon-subnet-public-3.id}"
    route_table_id = "${aws_route_table.hackathon-public-crt.id}"
}
