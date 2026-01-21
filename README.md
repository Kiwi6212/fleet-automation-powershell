# Fleet Management & Software Deployment Automation

## 📌 Project Overview
A comprehensive automation solution designed to manage a fleet of **370 Windows machines** across two Active Directory domains (Administrative and Educational). The project replaces manual software installations with an automated "Pull" system, ensuring a standardized and secure software baseline.

## ⚙️ Technical Stack
* **PowerShell**: Core logic for automation and reporting.
* **Chocolatey**: Package manager for seamless software deployment and updates.
* **GPO (Group Policy Objects)**: Deployment vector used for startup script execution.
* **WinRM**: Remote management of client workstations.

## 🏗️ Architecture
1. **Deployment** (`src/deployment`): Automated agent installation via GPO.
2. **Standard Suite** (`src/deployment`): Automated deployment of the software baseline (Chrome, VLC, etc.).
3. **Provisioning** (`src/provisioning`): "Golden Image" preparation script for new workstations.
4. **Audit** (`src/audit`): AD scanning, connectivity tests, and Chocolatey compliance reporting.
