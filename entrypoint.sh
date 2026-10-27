#!/bin/bash

# التأكد من وجود ملف قاعدة البيانات وصلاحياته
mkdir -p /var/www/html/database
touch /var/www/html/database/database.sqlite
chmod 777 /var/www/html/database/database.sqlite

# تجديد الرابط الرمزي للصور
rm -rf /var/www/html/public/storage
php artisan storage:link
chmod -R 777 /var/www/html/storage /var/www/html/public/storage 2>/dev/null || true

# تشغيل المايجريشن لإنشاء جميع الجداول
php artisan migrate --force

# تشغيل Apache
exec apache2-foreground