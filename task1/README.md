# 📦 RS School - AWS DevOps Course

## Task 1 - Terraform Infrastructure Setup

This repository contains the Terraform configurations and GitHub Actions workflows created for **Task 1** of the **RS School - AWS DevOps Course**.

---

## 🗂 Directory Structure

```
.
├── .github/workflows/        # GitHub Actions CI/CD pipelines
├── task1/                    # All Terraform configurations
│   ├── screenshots/          # Screenshots for verification
│   ├── backend.tf
│   ├── iamrole.tf
│   ├── main.tf
│   ├── s3buckets.tf
│   └── variables.tf
```

---

## 🚀 Features

- S3 Bucket creation via Terraform  
- IAM Role configuration with trust policy for GitHub Actions  
- GitHub Actions pipeline with `fmt`, `plan`, and `apply` jobs  
- Remote state configuration using S3  
- Modular Terraform structure  

---

## 🔧 Prerequisites

- AWS account with a non-root user  
- MFA enabled on the non-root user  
- AWS CLI configured  
- Terraform installed (`v1.12.2`)  
- S3 bucket and DynamoDB table created manually (for remote state)  
- GitHub repo with OIDC provider configured on AWS  
- IAM Role with proper policies and trust relationship  

---

## 🛠 Usage

1. **Clone the repository**  
   ```bash
   git clone https://github.com/Elifzyilmaz/rsschool-devops-course-tasks.git
   cd rsschool-devops-course-tasks
   ```

2. **Edit `.tf` files under** `task1/` **folder**

3. **Run GitHub Actions Workflow**  
   - Automatically on push to `main` or `task_1`  
   - On pull request to `main`  
   - Manually from GitHub UI (using `workflow_dispatch`)  

---

## ⚙️ GitHub Actions Workflow

**Triggers**:
- Push to `main` or `task_1`  
- Pull request to `main`

**Jobs**:
- `terraform-check` – Format check  
- `terraform-plan` – Show planned infrastructure  
- `terraform-apply` – Apply infrastructure (only on `main`)  

---

## 📌 Variables

| Variable           | Description                                  | Example                            |
|--------------------|----------------------------------------------|------------------------------------|
| `region`           | AWS region                                   | `us-east-1`                        |
| `vpc_cidr_block`   | CIDR block for the VPC                        | `10.1.0.0/16`                      |
| `role-to-assume`   | IAM Role ARN for GitHub Actions              | `arn:aws:iam::349570131547:role/GithubActionsRole` |

---

## ✅ Steps Completed

- [x] AWS account and non-root IAM user created  
- [x] MFA activated  
- [x] AWS CLI configured and tested  
- [x] GitHub repository created  
- [x] S3 bucket (for state) created manually  
- [x] DynamoDB table created manually  
- [x] Identity Provider configured on AWS  
- [x] IAM Role with trust relationship created  
- [x] Required policies attached to the role  
- [x] GitHub Actions workflow (`terraform.yml`) created  
- [x] Terraform files structured under `task1/`  
- [x] `workflow_dispatch` added for manual trigger  
- [x] `working-directory: ./task1` added for each GHA step  

---

## 📷 Screenshots

Check the `screenshots/` folder for:

- `aws_version.png` – AWS CLI version  
- `terraform_version.png` – Terraform CLI version  
- `user_mfa.png` – IAM user with MFA enabled  
- `iam-roles.jpeg` – IAM Role with correct trust relationship  
- `terraform_plan.png` – Output from `terraform plan`  

---

## 📄 License

This repository is created for educational purposes under the RS School AWS DevOps Course.
