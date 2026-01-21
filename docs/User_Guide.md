# Operations Guide: Fleet Management with Chocolatey

## 📋 Overview
This solution automates the software lifecycle for 370 workstations. It uses a "Pull" approach via GPO to ensure all machines remain compliant with the defined software baseline.

## 🛠️ Usage Instructions
1. **Provisioning**: Run `Invoke-MasterProvisioning.ps1` on new "Golden Images" to install Chocolatey and the full software suite.
2. **GPO Deployment**: Link `Install-Choco-Agent.ps1` to a Startup Script GPO in the GPMC.
3. **Maintenance**: Update the `$Apps` list in `Deploy-Standard-Suite.ps1` to add or remove software across the fleet.

## 🔒 Security & Auditing
* Sensitive data (domain names, IPs) are handled via variables.
* Audit reports (CSV) are automatically excluded from the repository by the `.gitignore` file to protect infrastructure details.
