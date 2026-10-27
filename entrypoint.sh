#!/bin/bash

# مسح الرابط القديم إن وجد وإنشاؤه من جديد بصلاحيات كاملة
rm -rf /var/www/html/public/storage
php artisan storage:link

# ضبط الصلاحيات بعد إنشاء الرابط الرمزي
chmod -R 777 /var/www/html/storage
chmod -R 777 /var/www/html/public/storage 2>/dev/null || true

# تشغيل المايجريشن
php artisan migrate --force

# تنظيف أوامر MySQL غير المتوافقة مع SQLite ثم الاستيراد
if [ -f "/var/www/html/codequest.sql" ]; then
    echo "Converting and importing SQL data into SQLite..."
    sed -i 's/ENGINE=InnoDB//g' /var/www/html/codequest.sql
    sed -i 's/COLLATE=[^ ;]*//g' /var/www/html/codequest.sql
    sed -i 's/CHARACTER SET [^ ;]*//g' /var/www/html/codequest.sql
    sed -i 's/DEFAULT CHARSET=[^ ;]*//g' /var/www/html/codequest.sql
    sed -i 's/AUTO_INCREMENT=[0-9]*//g' /var/www/html/codequest.sql

    # محاولة استيراد أسطر INSERT فقط التي تحتوي على البيانات
    grep -i "INSERT INTO" /var/www/html/codequest.sql | sqlite3 /var/www/html/database/database.sqlite 2>/dev/null || true
fi

# تشغيل خادم Apache
exec apache2-foreground