# ☁️ Cloud Engineering Capstone Projects

This repository contains three **enterprise-grade capstone projects**, each simulating a real-world cloud infrastructure deployment on a major cloud platform. These projects demonstrate production-level skills in:

* Cloud Networking
* Compute Services
* Security Best Practices
* Monitoring & Logging
* Infrastructure as Code (IaC)

---

## 📁 Projects Overview

| Project   | Cloud Platform              | IaC Options                    |
| --------- | --------------------------- | ------------------------------ |
| Project 1 | Microsoft Azure             | ARM / Bicep / Terraform        |
| Project 2 | Amazon Web Services (AWS)   | CloudFormation / Terraform     |
| Project 3 | Google Cloud Platform (GCP) | Deployment Manager / Terraform |

---

## 🔵 Project 1 — Enterprise Azure Infrastructure Deployment

### 📌 Overview

Design and deploy a **production-ready infrastructure on Microsoft Azure** that is secure, highly available, scalable, and fully automated.

### 🧱 Key Components

* **Resource Organization**
  Resource Group containing all resources

* **Networking**
  Virtual Network (VNet) with Web, Application, and Database subnets
  Network Security Groups (NSGs)

* **Compute**
  2+ Virtual Machines in the Web Subnet running a web server (IIS / Nginx / Apache)

* **Load Balancing**
  Azure Load Balancer distributing traffic across VMs

* **Database**
  Azure SQL Database with public access disabled
  VNet-only access

* **Security**
  Azure Key Vault for secrets and connection strings
  Role-Based Access Control (RBAC) with least privilege

* **Monitoring**
  Azure Monitor, Application Insights, and alerts (e.g., high CPU usage)

* **Automation**
  Full IaC deployment using ARM Templates, Bicep, or Terraform (**mandatory**)

---

## 🟠 Project 2 — Enterprise AWS Infrastructure Deployment

### 📌 Overview

Design and deploy a **production-ready infrastructure on AWS** that is secure, highly available, scalable, and fully automated.

### 🧱 Key Components

* **Resource Organization**
  Proper naming conventions and resource tagging

* **Networking**
  VPC with:

  * 2 Public Subnets
  * 2 Private Subnets (across different Availability Zones)
  * Internet Gateway
  * NAT Gateway
  * Route Tables

* **Compute**
  2+ EC2 instances in private subnets running a web server (Nginx / Apache)
  Accessible only through the Load Balancer

* **Load Balancing**
  Application Load Balancer (ALB) with health checks

* **Database**
  Amazon RDS (MySQL / PostgreSQL)
  Public access disabled
  Accessible only from application layer

* **Security**
  Security Groups
  IAM Roles (no hardcoded credentials)
  AWS Secrets Manager / Parameter Store
  Least privilege principle

* **Monitoring**
  CloudWatch Metrics & Logs
  Alerts (e.g., high CPU utilization)

* **Automation**
  Full IaC deployment using CloudFormation or Terraform (**mandatory**)

---

## 🟢 Project 3 — Enterprise GCP Infrastructure Deployment

### 📌 Overview

Design and deploy a **production-ready infrastructure on GCP** that is secure, highly available, scalable, and fully automated.

### 🧱 Key Components

* **Project Setup**
  GCP Project with billing configured
  Naming conventions and resource labels

* **Networking**
  VPC Network with public and private subnets
  Firewall Rules and Routes
  Cloud NAT for outbound internet access

* **Compute**
  2+ Compute Engine VMs in private subnet running a web server (Nginx / Apache)
  Not directly exposed to the internet

* **Load Balancing**
  HTTP(S) Load Balancer with health checks

* **Database**
  Cloud SQL (MySQL / PostgreSQL)
  Public access disabled
  Internal network access only

* **Security**
  Firewall rules (ingress/egress)
  Service Accounts
  Secret Manager for credentials
  Least privilege principle

* **Monitoring**
  Cloud Monitoring and Cloud Logging
  Alerts (e.g., high CPU usage)

* **Automation**
  Full IaC deployment using Terraform or Deployment Manager (**mandatory**)

---

## 🚀 Final Note

These projects are designed to simulate a **real Cloud Engineer role in an enterprise environment**.

Each implementation should be treated as **production-ready infrastructure**, following best practices in:

* Security
* Scalability
* High Availability
* Automation

---

