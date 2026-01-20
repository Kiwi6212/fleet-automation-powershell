# Fleet Management Automation & Software Deployment

## 📌 Présentation du Projet
Cette solution automatise la gestion d'un parc de **370 machines** Windows. Elle remplace les installations manuelles par un système "Pull" basé sur des scripts PowerShell et Chocolatey, garantissant un socle logiciel standardisé et à jour.

## ⚙️ Technologies Utilisées
* **PowerShell** : Cœur de l'automatisation et du reporting.
* **Chocolatey** : Gestionnaire de paquets pour le déploiement applicatif.
* **GPO (Group Policy Objects)** : Vecteur d'exécution au démarrage des postes.
* **Active Directory** : Source de données pour l'audit du parc.

## 🏗️ Architecture de la Solution
* **Déploiement** (`src/deployment`) : Scripts d'installation automatique de l'agent via GPO.
* **Audit & Reporting** (`src/audit`) : Scan de l'AD, tests de connectivité et vérification de conformité Chocolatey.
* **Provisioning** (`src/provisioning`) : Script de préparation "Master" pour le déploiement initial.

## 🚀 Installation
1. Clonez ce dépôt.
2. Configurez vos variables de domaine et de serveurs dans les scripts.
3. Déployez le script d'installation via une GPO de démarrage.
