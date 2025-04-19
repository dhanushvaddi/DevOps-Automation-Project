# DevOps Automation - AWS, Terraform, Ansible, Jenkins, Docker & Kubernetes

This project automates the provisioning and configuration of cloud infrastructure and continuous deployment pipelines using modern DevOps tools.

# Problem Statement

Your organization wants to automate infrastructure and app deployment on AWS. You must:

- Manually create a Terraform Master instance in AWS.
- Use Terraform to create:
  - 1 VPC
  - 1 Subnet
  - 3 EC2 instances in that Subnet
- Use Ansible to:
  - Install Jenkins on one instance (Jenkins Master)
  - Install Kubernetes (Master and Slave)
- Use Docker to containerize a static website: [Website GitHub Repo](https://github.com/Sameer-8080/Website-PRT-ORG)
- Push the Docker image to DockerHub.
- Create a Jenkins pipeline (`Jenkinsfile`) to:
  - Build and push Docker image
  - Deploy to Kubernetes using:
    - `K8s-deployment.yaml` with 5 replicas
    - `K8s-service.yaml` of type NodePort (port: 30010)
  - Trigger the pipeline automatically upon changes in GitHub.

# Folder Breakdown

- `terraform/`: Terraform scripts for infrastructure.
- `ansible/`: Playbook to install Jenkins, Docker, Kubernetes.
- Root: Dockerfile, Kubernetes manifests, and Jenkins pipeline.

# Tools Used

- AWS
- Terraform
- Ansible
- Jenkins
- Docker
- Kubernetes

---
