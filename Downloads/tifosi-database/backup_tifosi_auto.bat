@echo off
:: ✅ Fichier de sauvegarde automatique pour la base MySQL "tifosi"

:: 📅 Génère la date au format YYYYMMDD
set date=%date:~6,4%%date:~3,2%%date:~0,2%

:: 💾 Exécute la commande de sauvegarde
mysqldump -u Tifosi -pTifosi2024! tifosi > backup_tifosi_%date%.sql

:: ✅ Message de confirmation
echo.
echo ✅ Sauvegarde terminée : backup_tifosi_%date%.sql
echo.
pause