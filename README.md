
# Enterprise Azure Infrastructure Deployment (Capstone Project)

## Project Overview

This project is a production-like cloud infrastructure deployed on Microsoft Azure using **Terraform (Infrastructure as Code)**. It simulates a real enterprise environment with networking, compute, security, database, and monitoring layers.

---

## Architecture Summary

###  Networking

* Virtual Network (VNet)
* Subnets:

  * Web Subnet
  * Application Subnet
  * Database Subnet
* Network Security Groups (NSGs) to control traffic flow



###  Compute Layer

* 2 Virtual Machines deployed in Web Subnet
* Web servers installed (IIS / Nginx / Apache)
* Handles incoming application traffic



### Load Balancer

* Azure Load Balancer placed in front of VMs
* Distributes traffic evenly across backend VMs
* Health probes ensure availability



### Database Layer

* Azure SQL Database
* Public access disabled
* Access restricted to Virtual Network only (private access)



### Security Layer

* Azure Key Vault used for secrets management:

  * Passwords
  * Connection strings
* Role-Based Access Control (RBAC)
* Least Privilege Principle applied



### Monitoring & Logging

* Azure Monitor enabled
* Log Analytics Workspace configured
* Alerts created (e.g., CPU usage > 80%)
* VM performance tracking enabled



## Infrastructure as Code (Terraform)

All resources are deployed using Terraform.

### Files:

* main.tf → Resource Group & provider
* network.tf → VNet & subnets
* vm.tf → Virtual Machines
* sql.tf → Azure SQL Database
* keyvault.tf → Secrets management
* outputs.tf → Outputs


# Project Structure

```id="d2"
capstone-iac/
├── main.tf
├── variables.tf
├── network.tf
├── vm.tf
├── sql.tf
├── keyvault.tf
├── outputs.tf
├── README.md
└── PROJECT_DETAILS.md
```

---

## Key Features

✔ Secure cloud architecture
✔ Highly available design
✔ Scalable infrastructure
✔ Fully automated with Terraform
✔ Enterprise-level security (Key Vault + RBAC)
✔ Monitoring & alerting enabled


