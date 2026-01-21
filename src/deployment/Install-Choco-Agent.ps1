# Infrastructure variables 
$DeployServer = "SRV-DEPLOY-01" 
$InstallerPath = "\\$DeployServer\Deploy$\choco-install.ps1"

# Check if Chocolatey is installed
if (Get-Command choco.exe -ErrorAction SilentlyContinue) {
    Write-Output "Chocolatey agent is already installed."
} else {
    Write-Output "Installing Chocolatey agent from $InstallerPath..."
    try {
        & $InstallerPath
        Write-Output "Installation successful."
    } catch {
        Write-Error "Installation failed: $($_.Exception.Message)"
    }
}
