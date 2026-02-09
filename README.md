# 🌍 Projet QAir - Système Centralisé de Gestion de la Qualité de l'Air

![SQL](https://img.shields.io/badge/Language-SQL-blue)
![Database](https://img.shields.io/badge/DB-MySQL_8.0-orange)
![Status](https://img.shields.io/badge/Status-Completed-success)

## 📋 Présentation du Projet
Dans le cadre du projet national lancé par le ministère de la Transition Écologique, **QAir** est une solution de base de données relationnelle conçue pour centraliser les mesures de concentration de gaz atmosphériques (GES, GESI) sur l'ensemble du territoire français.

L'objectif principal était de migrer des données auparavant silotées dans des tableurs locaux vers une infrastructure **fiable, évolutive et sécurisée**, permettant une analyse précise de la pollution urbaine.

---

## 🏗️ Architecture et Modélisation (Ingénierie de Données)

Le projet a suivi un cycle de conception rigoureux pour garantir l'intégrité et la performance du système.

### 1. Modèle Conceptuel de Données (MCD)
Nous avons appliqué les règles de **Normalisation** jusqu'à la **3ème Forme Normale (3FN)** pour éliminer toute redondance et éviter les anomalies de mise à jour.
* **Gestion RH :** Séparation stricte entre les agents administratifs (gestion des rapports) et techniques (maintenance des capteurs).
* **Hiérarchie Géographique :** Structuration précise des Agences > Régions > Villes > Préfectures.
* **Temporalité :** Historisation des relevés mensuels par type de gaz (ppm).



[Image of a database entity relationship diagram]


### 2. Modèle Logique & Physique (MLD/MPD)
Le passage au modèle logique a permis de transformer nos associations complexes en tables de jointures optimisées.
* **Moteur de stockage :** Utilisation d'**InnoDB** pour supporter les clés étrangères (FK) et garantir l'intégrité référentielle.
* **Types de données :** Optimisation des types (DECIMAL pour les ppm, VARCHAR calibrés, DATE) pour minimiser l'empreinte disque.

---

## 🔒 Sécurité et Administration (RBAC)

La sécurité est au cœur de l'implémentation avec une gestion des accès basée sur les rôles (**Role-Based Access Control**) :

* **`admin_user`** : Détient les privilèges `ALL PRIVILEGES`. Responsable de la maintenance structurelle (DDL) et de la gestion du parc de capteurs.
* **`readonly_user`** : Accès limité au `SELECT` sur les données publiques. Ce compte est destiné à la génération de rapports et à la consultation par les chefs d'agence sans risque d'altération des données.

---

## 📊 Capacités de Reporting SQL

La base de données est conçue pour répondre à des requêtes complexes via des scripts SQL optimisés :
* **Agrégations Temporelles :** Moyennes de pollution par région et par année.
* **Calculs de Productivité :** Calcul dynamique du taux de rapports produits par les agents administratifs via `TIMESTAMPDIFF` et `COUNT`.
* **Requêtes Paramétrées :** Extraction ciblée par gaz, ville ou période chronologique.

---

## 📁 Structure du Dépôt

| Fichier | Rôle Technique |
| :--- | :--- |
| **`db final.sql`** | Script de déploiement complet (Schéma + Peuplement de +200 relevés). |
| **`mld update projet.loo`** | Fichier source de modélisation (Logiciel Looping). |
| **`requetes_qair.txt`** | Bibliothèque des 12 requêtes métier (KPI ministériels). |
| **`creation des 2 user.txt`** | Script de gestion des privilèges et de la sécurité des accès. |

---

## 🚀 Guide de Déploiement

1.  **Prérequis** : Disposer d'une instance MySQL 8.0+.
2.  **Initialisation** : Exécutez le script principal pour créer la structure et injecter les données :
    ```bash
    mysql -u root -p < "db final.sql"
    ```
3.  **Configuration des accès** : Créez les profils utilisateurs sécurisés :
    ```bash
    mysql -u root -p < "creation des 2 user.txt"
    ```

---
**Note de conformité :** *Le projet intègre les contraintes RGPD en limitant les données sensibles collectées et en garantissant la traçabilité des accès.*
