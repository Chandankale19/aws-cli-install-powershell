
# Function to check if AWS CLI is installed
function Check-AwsCliInstalled {
    try {
        $awsVersion = aws --version
        if ($awsVersion) {
            Write-Host "AWS CLI is already installed: $awsVersion"
            return $true
        }
    } catch {
        Write-Host "AWS CLI is not installed."
        return $false
    }
}

# Function to install AWS CLI
function Install-AwsCli {
    Write-Host "Installing AWS CLI..."

    # Download and install AWS CLI
    $url = "https://awscli.amazonaws.com/AWSCLIV2.msi"
    $outputPath = "$env:TEMP\AWSCLIV2.msi"
    
    Invoke-WebRequest -Uri $url -OutFile $outputPath
    Start-Process msiexec.exe -ArgumentList "/i", $outputPath, "/quiet", "/norestart" -NoNewWindow -Wait
    
    Write-Host "AWS CLI installation complete."
}

# Function to update AWS CLI
function Update-AwsCli {
    Write-Host "Updating AWS CLI to the latest version..."
    
    # Download and update AWS CLI
    $url = "https://awscli.amazonaws.com/AWSCLIV2.msi"
    $outputPath = "$env:TEMP\AWSCLIV2.msi"
    
    Invoke-WebRequest -Uri $url -OutFile $outputPath
    Start-Process msiexec.exe -ArgumentList "/i", $outputPath, "/quiet", "/norestart" -NoNewWindow -Wait
    
    Write-Host "AWS CLI update complete."
}

# Function to configure AWS CLI
function Configure-AwsCli {
    Write-Host "Configuring AWS CLI..."

    # Run AWS CLI configuration
    aws configure
}

# Main execution logic
if (-not (Check-AwsCliInstalled)) {
    Install-AwsCli
} else {
    Update-AwsCli
}

Configure-AwsCli
