
# Enterprise GCP Infrastructure Deployment (Capstone Project)

## Project Overview

This project simulates a real-world **Cloud Engineer role** by designing and deploying a **production-ready infrastructure** on **Google Cloud Platform (GCP)**.

The infrastructure is built with a focus on:

* Security 
* High Availability 
* Scalability 
* Automation 

It follows industry best practices and is fully deployed using **Infrastructure as Code (IaC)**.

---

## Objectives

The goal of this project is to design and implement a GCP infrastructure that is:

* Secure
* Highly available
* Scalable
* Fully automated using Terraform

---

## Architecture Overview

The architecture consists of the following layers:

### 1. Networking Layer (VPC)

* Custom VPC Network
* Public and Private Subnets
* Route Tables
* Firewall Rules (Ingress & Egress)
* Cloud NAT for private instances

### 2. Compute Layer

* 2 Virtual Machines (Private Subnet)
* Web servers installed (Nginx / Apache)
* No direct public access (secured access only)

### 3. Load Balancing

* HTTP(S) Load Balancer
* Traffic distributed across instances
* Health checks enabled

### 4. Data Layer

* Managed database using Cloud SQL
* Private access only (no public exposure)
* Internal communication with VMs

### 5. Security Layer

* Firewall rules with least privilege
* Service Accounts with limited permissions
* Secrets stored using Secret Manager

### 6. Monitoring & Logging

* Cloud Monitoring enabled
* Cloud Logging enabled
* Alerts configured (e.g., high CPU usage)

### 7. Automation (IaC)

* Infrastructure deployed using **Terraform**
* Modular and reusable code structure


