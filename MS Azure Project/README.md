#  Enterprise Azure Infrastructure Deployment (Capstone Project)

##  Project Overview

This project is a production-ready cloud infrastructure built on **Microsoft Azure** using **Terraform (Infrastructure as Code)**. It simulates a real enterprise environment with networking, compute, database, security, and monitoring components.

The goal is to design a system that is:

* Secure 
* Scalable 
* Highly Available 
* Fully Automated 

---

#  Architecture Overview

##  Networking Layer

* Virtual Network (VNet)
* Subnets:

  * Web Subnet
  * Application Subnet
  * Database Subnet
* Network Security Groups (NSGs) to control traffic flow

---

## Compute Layer

* 2 Virtual Machines (VMs)
* Deployed in Web Subnet
* Web servers installed (IIS / Nginx / Apache)
* Handles incoming traffic

---

## Load Balancer

* Azure Load Balancer in front of VMs
* Distributes traffic evenly
* Health probes ensure VM availability

---

##  Data Layer

* Azure SQL Database
* Public access disabled
* Accessible only through Virtual Network (private access)

---

## Security Layer

* Azure Key Vault for secrets:

  * Passwords
  * Connection strings
* Role-Based Access Control (RBAC)
* Least Privilege Principle applied

---

##  Monitoring & Logging

* Azure Monitor enabled
* Log Analytics Workspace configured
* Alerts created (CPU > 80%)
* VM performance tracking enabled

---

# ⚙️Infrastructure as Code (Terraform)

This entire infrastructure is automated using Terraform.

## File Structure

```txt id="f1"
capstone-iac/
├── main.tf
├── variables.tf
├── network.tf
├── vm.tf
├── sql.tf
├── keyvault.tf
├── outputs.tf
```

---

# Key Features

✔ Secure cloud architecture
✔ High availability design
✔ Scalable infrastructure
✔ Fully automated deployment (IaC)
✔ Centralized secret management (Key Vault)
✔ Monitoring and alerting system


# Conclusion

This project demonstrates real-world **Cloud Engineering and DevOps skills**, including infrastructure design, automation, security, and monitoring using Microsoft Azure and Terraform.

---
