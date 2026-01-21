# Master Image Preparation (Provisioning)
# Force TLS 1.2 for secure downloads
[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor 3072

# Install Chocolatey if missing
if (-not (Get-Command choco.exe -ErrorAction SilentlyContinue)) {
    Write-Output "Installing Chocolatey via official web stream..."
    iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}

# Install full software stack for the Master image
$MasterApps = @("googlechrome", "vlc", "adobereader", "7zip", "libreoffice-fresh", "notepadplusplus")

foreach ($App in $MasterApps) {
    Write-Output "Master Install: $App"
    choco install $App -y
}
