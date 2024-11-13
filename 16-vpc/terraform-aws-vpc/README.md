VPC Creation steps with terrafrom
=================================
1. Create VPC with with CIDR 10.0.0.0/16

2. Create internet gateway and attach to that VPC

3. create 6 subnets in 2 zones us-east-1a (public, private, database), us-east-1b (public, private, database)
    flipkart-public-1a - 10.0.1.0/24 - us-east-1a
    flipkart-public-1b - 10.0.2.0/24 - us-east-1b

    flipkart-private-1a - 10.0.11.0/24 - us-east-1a
    flipkart-private-1b - 10.0.12.0/24 - us-east-1b

    flipkart-database-1a - 10.0.21.0/24 - us-east-1a
    flipkart-database-1b - 10.0.22.0/24 - us-east-1b

--> enable public ip for public subnets - map_public_ip_on_launch = true

--> group all db subnets with aws_db_subnet_group

4. create 3 route tables and associate them to subnets
    flipkart-public
    flipkart-private
    flipkart-database

5. add internet gateway (0.0.0.0/0) to public route table to get internet, private routetables don't have internet

6. create security group and provide SSH-22, HTTP-80 inbound rules
create EC2 server with public subnet, vpc, public sg

7. NAT
NAT should be in public subnet only while creating slect public subnet only
elastic IP Address need to provide to NAT - create elastic IP
create NAT gateway
8. in private routetable - routes, add nat gateway, to provide internet to private servers




