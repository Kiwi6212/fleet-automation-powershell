# Liste des logiciels cibles 
$Apps = @("googlechrome", "vlc", "adobereader", "7zip", "libreoffice-fresh")

Write-Output "Lancement du déploiement du socle logiciel..."

foreach ($App in $Apps) {
    Write-Output "Traitement de : $App"
    # Mise à jour ou installation automatique
    choco upgrade $App -y --no-progress
}
