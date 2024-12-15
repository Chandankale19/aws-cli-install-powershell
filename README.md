# AWS CLI Installation and Update Script for Windows

This repository contains a PowerShell script that simplifies the process of installing or updating the AWS CLI on any Windows system. The script checks if AWS CLI is already installed, updates it if necessary, and configures the AWS CLI for the user.

## Features

- **Install AWS CLI**: Automatically installs the latest version of AWS CLI if not already installed.
- **Update AWS CLI**: Updates the AWS CLI to the latest version if an older version is detected.
- **Configure AWS CLI**: Prompts the user to configure AWS CLI with their AWS credentials and settings.
- **Supports Windows OS**: This script works on Windows, providing an easy way to manage AWS CLI.

## Prerequisites

- **PowerShell**: Ensure you have **PowerShell** installed and running with **Administrator privileges** to install or update software.
- **Internet Connection**: The script downloads the latest AWS CLI installer from Amazon's official site.
- **AWS Credentials**: You need an **AWS Access Key ID** and **Secret Access Key** for configuration. The script will guide you through setting these details interactively.  
   Example configuration values:  
   ```plaintext
   AWS Access Key ID [None]: 
   AWS Secret Access Key [None]: 
   Default region name [None]: 
   Default output format [None]: 

## Script Usage

### Steps to Run the Script:

1. **Download or Clone the Repository**:
   - You can either download the repository as a ZIP file or clone it using Git:
   ```powershell
   git clone https://github.com/Chandankale19/aws-cli-install-powershell.git

2. **Run the Script:**:
   - Open PowerShell with Administrator privileges.
   - Navigate to the directory where the install_or_update_aws_cli.ps1 script is located.
   - Run the script using the following command:
   ```powershell
   .\install_or_update_aws_cli.ps1
   
3. **Troubleshooting**:
   - PowerShell Script Execution Policy: If you encounter an error regarding script execution, you may need to change the execution policy. To do this, run the following command in PowerShell with Administrator privileges:.
   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

