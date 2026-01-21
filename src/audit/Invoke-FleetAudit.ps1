# Paramètres de scan
$DomainName = "domain.local"
$ExportPath = "C:\Audit_Reports\Fleet_Status.csv"

Write-Output "Début de l'audit pour le domaine $DomainName..."

# Simulation de récupération des postes (à lier à Get-ADComputer en prod)
$Computers = @("PC-01", "PC-02", "PC-03") 

$Results = foreach ($PC in $Computers) {
    [PSCustomObject]@{
        ComputerName = $PC
        Online       = Test-Connection -ComputerName $PC -Count 1 -Quiet
        ChocoStatus  = "Checked"
        Timestamp    = Get-Date
    }
}

$Results | Export-Csv -Path $ExportPath -NoTypeInformation -Delimiter ";"
Write-Output "Rapport généré dans $ExportPath"
