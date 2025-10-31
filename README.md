# Tech Eazy DevOps Assignment - Sudhin Swain

## 📖 Overview
This project demonstrates deploying a **Spring Boot (hellomvc)** application on an **AWS EC2 instance** using **Terraform** and **AWS CLI**.

### ✅ What’s Included
- Terraform code for EC2 setup
- EC2 configuration with Java + Maven + Git
- Spring Boot app (built via Maven)
- App running on port 80
- Deployment script (`deploy.sh`)
- Configs and screenshots

### 🚀 How to Run
1. SSH into your EC2  
2. Clone this repo  
3. Run `./deploy.sh dev`  
4. Visit: `http://<EC2_PUBLIC_IP>/`

### 📂 Repo Structure


# Step 4: Create .gitignore, config files, and deploy script

# Ignore unnecessary files
cat > .gitignore <<'EOF'
target/
*.log
*.jar
*.pem
*.tfstate
.terraform/
aws_credentials.txt
