#!/bin/bash

# تشغيل المايجريشن تلقائياً وإنشاء الجداول
php artisan migrate --force

# تشغيل خادم Apache
exec apache2-foreground