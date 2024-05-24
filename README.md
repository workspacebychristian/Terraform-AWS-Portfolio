Welcome to my GitHub page! Here, you'll find comprehensive code to build a functional VPC Architecture For 3-tier web Application Server on AWS. This repository contains everything you need to set up your VPC environment efficiently and securely.

Getting Started

To get started, ensure that you declare the provider as AWS, as our setup is specifically designed for AWS interactions.

Code Overview

The code is structured to create a robust VPC setup with the following components:

Subnets:

2 Private Subnets,
2 Public Subnets,
2 Database Subnets.

Route Tables:

1 Public Route Table: Associated with the 2 Public Subnets,
1 Private Route Table: Associated with the 2 Private Subnets,
1 Database Route Table: Associated with the 2 Database Subnets.

Internet Gateway:
Internet Gateway Attached to VPC. 

NAT Gateway:

1 NAT Gateway: Ensures outbound communication for the Private Subnets.

Network Interface will be created.

1 Elastic IP Address For Private Subnets for OutBound Communication.

Variables
The codes are parameterized with variables to ensure reusability and flexibility. This allows you to customize the setup according to your specific requirements.


Network Access Control List, VPC Security Group and Database Subnet Group will be created. 


By following these steps, you will have a fully functional VPC Architecture For 3-tier web Application Server on AWS. Feel free to explore, modify, and contribute to the code to suit your needs.


Happy coding! 🚀

Christian
