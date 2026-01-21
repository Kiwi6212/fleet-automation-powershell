# Guide d'Exploitation : Gestion de Parc via Chocolatey

## 📋 Présentation
Cette solution automatise la gestion d'un parc de 370 machines via une approche "Pull" PowerShell.

## 🛠️ Utilisation
1. **Provisioning** : Exécutez `Invoke-MasterProvisioning.ps1` sur vos images Master.
2. **Déploiement** : Liez `Install-Choco-Agent.ps1` à vos GPO de démarrage.
3. **Audit** : Lancez `Invoke-FleetAudit.ps1` pour obtenir un état des lieux du parc.

## 🔒 Sécurité
Les données sensibles (domaines, IPs) ont été remplacées par des variables. Les rapports CSV sont exclus du dépôt par le fichier `.gitignore`.
