# إزالة أي رابط رمزي قديم وإعادة إنشائه بقوة
rm -rf /var/www/html/public/storage
php artisan storage:link
chmod -R 777 /var/www/html/storage /var/www/html/public/storage 2>/dev/null || true