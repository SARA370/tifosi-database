# 🍕 Tifosi Database

Ce projet présente la base de données MySQL d’un restaurant fictif nommé **Tifosi**. Il contient la structure, les données, et un fichier de sauvegarde.

---

## 📁 Contenu du projet

| Fichier                   | Description                               |
| ------------------------- | ----------------------------------------- |
| `create_tifosi.sql`       | Crée la base de données et les tables     |
| `insert_tifosi.sql`       | Insère les données dans les tables        |
| `backup_tifosi_clean.sql` | Sauvegarde complète (structure + données) |
| `README.md`               | Ce fichier de documentation               |

---

## 🧪 Tester la restauration de la base

### 1. Créer la base vide

```sql
CREATE DATABASE tifosi;
```

### 2. Lancer le script de restauration

```bash
mysql -u Tifosi -p -D tifosi < backup_tifosi_clean.sql
```

> ✅ Si le fichier contient déjà la ligne `USE tifosi;`, l’option `-D tifosi` n’est pas nécessaire.

---

## ℹ️ Remarques utiles

- Ce projet est conçu pour MySQL.
- En cas d’erreur comme `No database selected`, assure-toi d’avoir bien créé la base ou utilisé `-D tifosi`.

---

© Projet pédagogique — Base de données Tifosi