# Capstone Project: Enterprise AWS Infrastructure Deployment

## Project Overview

This project demonstrates the design and deployment of a **production-ready, secure, scalable, and highly available cloud infrastructure on Amazon Web Services (AWS)**.

It simulates a real-world enterprise environment where a Cloud Engineer is responsible for building infrastructure using **Infrastructure as Code (IaC)** and applying cloud best practices.

---

## Objectives

The main goal of this project is to design and implement an AWS architecture that is:

- 🔐 Secure  
- ⚖️ Highly Available  
- 📈 Scalable  
- 🤖 Fully Automated (IaC-based)  

---

## Architecture Overview

The infrastructure includes:

- Custom **VPC with public and private subnets**
- **Application Load Balancer (ALB)** for traffic distribution
- **EC2 instances** in private subnets
- **RDS Database (MySQL/PostgreSQL)** in private subnet
- **NAT Gateway & Internet Gateway**
- **CloudWatch Monitoring & Alerts**
- Fully automated deployment using **Terraform / CloudFormation**

---

## AWS Services Used

- Amazon VPC  
- Amazon EC2  
- Amazon RDS  
- Application Load Balancer (ALB)  
- AWS IAM  
- AWS CloudWatch  
- AWS Secrets Manager / Parameter Store  
- NAT Gateway & Internet Gateway  
- AWS CloudFormation / Terraform  

---

## Network Architecture (VPC Design)

- 1 VPC (Custom CIDR Block)
- 2 Public Subnets (Multi-AZ)
- 2 Private Subnets (Multi-AZ)
- Internet Gateway (Public Access)
- NAT Gateway (Private Subnet Internet Access)
- Route Tables for traffic control

---

## Compute Layer

- 2+ EC2 instances deployed in **private subnets**
- Web servers installed (Nginx / Apache)
- Instances are not publicly accessible
- Access only through **Application Load Balancer**

---

## Load Balancing

- Application Load Balancer (ALB) configured
- Traffic distributed across EC2 instances
- Health checks enabled for high availability
- Ensures fault tolerance and scalability

---

## Data Layer

- Amazon RDS (MySQL or PostgreSQL)
- Deployed in private subnet (no public access)
- Secure access only from application layer
- Credentials managed using Secrets Manager / Parameter Store

---

## Security Implementation

- Security Groups configured per layer
- IAM Roles (no hardcoded credentials)
- Principle of Least Privilege applied
- Optional: NACLs for additional network security
- Database access restricted to application only

---

## Monitoring & Logging

- Amazon CloudWatch Metrics enabled
- CloudWatch Logs configured for EC2 instances
- CPU utilization alarm configured
- Alerts for system performance monitoring

---

## Infrastructure as Code (IaC)

This project is fully automated using:

- Terraform **OR**
- AWS CloudFormation

