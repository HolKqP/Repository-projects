# إزالة أي رابط رمزي قديم وإعادة إنشائه بقوة
rm -rf /var/www/html/public/storage
php artisan storage:link
chmod -R 777 /var/www/html/storage /var/www/html/public/storage 2>/dev/null || true



#!/bin/bash
set -e

# تهيئة الروابط والتخزين
php artisan storage:link || true
php artisan config:clear
php artisan route:clear
php artisan view:clear

# تشغيل خادم Apache في الواجهة حتى لا تخرج الحاوية
exec apache2-foreground