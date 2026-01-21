$DeployServer = "SRV-DEPLOY-01" 
$InstallerPath = "\\$DeployServer\Deploy$\choco-install.ps1"

# Vérification de l'agent
if (Get-Command choco.exe -ErrorAction SilentlyContinue) {
    Write-Output "Chocolatey est déjà présent."
} else {
    Write-Output "Installation de l'agent Chocolatey..."
    try {
        & $InstallerPath
        Write-Output "Installation terminée avec succès."
    } catch {
        Write-Error "Erreur lors de l'installation : $($_.Exception.Message)"
    }
}
