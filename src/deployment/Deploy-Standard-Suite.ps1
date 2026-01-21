# Standard software baseline
$Apps = @("googlechrome", "vlc", "adobereader", "7zip", "libreoffice-fresh")

Write-Output "Starting software suite deployment..."

foreach ($App in $Apps) {
    Write-Output "Processing: $App"
    # Silent upgrade or installation
    choco upgrade $App -y --no-progress
}
