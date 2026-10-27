#!/bin/bash

# إنشاء الرابط الرمزي للصور
php artisan storage:link

# تشغيل المايجريشن لضمان وجود الجداول
php artisan migrate --force

# استيراد ملف SQL في قاعدة بيانات SQLite إذا كان الملف موجوداً
if [ -f "/var/www/html/codequest.sql" ]; then
    echo "Importing codequest.sql into SQLite..."
    sqlite3 /var/www/html/database/database.sqlite < /var/www/html/codequest.sql 2>/dev/null || true
fi

# تشغيل خادم Apache
exec apache2-foreground