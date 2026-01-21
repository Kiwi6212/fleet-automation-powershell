# Installation de Chocolatey et du socle complet (Mastering)
[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor 3072

if (-not (Get-Command choco.exe -ErrorAction SilentlyContinue)) {
    iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}

$MasterApps = @("googlechrome", "vlc", "adobereader", "7zip", "libreoffice-fresh", "notepadplusplus")

foreach ($App in $MasterApps) {
    choco install $App -y
}
