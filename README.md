Welcome to my GitHub page! Here, you'll find comprehensive code to build a 3-tier web application VPC on AWS. This repository contains everything you need to set up your VPC environment efficiently and securely.

Getting Started

To get started, ensure that you declare the provider as AWS, as our setup is specifically designed for AWS interactions.

Code Overview

The code is structured to create a robust VPC setup with the following components:

Subnets:

2 Private Subnets
2 Public Subnets
2 Database Subnets

Route Tables:

1 Public Route Table: Associated with the 2 Public Subnets
1 Private Route Table: Associated with the 2 Private Subnets
1 Database Route Table: Associated with the 2 Database Subnets

NAT Gateway:

1 NAT Gateway: Ensures outbound communication for the Private Subnets
Variables
The codes are parameterized with variables to ensure reusability and flexibility. This allows you to customize the setup according to your specific requirements.

By following these steps, you will have a fully functional 3-tier web application VPC on AWS. Feel free to explore, modify, and contribute to the code to fit your needs.

Contribute If you have any suggestions or improvements, please feel free to fork the repository and submit a pull request. Your contributions are always welcome!

Contact If you encounter any issues or have any questions, please open an issue in the repository or contact me directly.

Happy coding! 🚀

Christian
