# استخدام بيئة PHP 8.3
FROM php:8.3-apache

# تثبيت متطلبات النظام وامتدادات PHP اللازمة
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libsqlite3-dev \
    sqlite3 \
    zip \
    unzip \
    git \
    curl \
    libzip-dev \
    dos2unix \
    && docker-php-ext-install pdo_mysql pdo_sqlite mbstring exif pcntl bcmath gd zip
# تفعيل موديل Rewrite لـ Apache
RUN a2enmod rewrite

# ضبط مسار الويب لـ Laravel
ENV APACHE_DOCUMENT_ROOT /var/www/html/public
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

# ضبط المنفذ ليتوافق مع Render
RUN sed -i 's/80/${PORT}/g' /etc/apache2/ports.conf /etc/apache2/sites-available/*.conf

# تثبيت Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html
COPY . .

# إنشاء ملف sqlite فارغ لتفادي الأخطاء
RUN mkdir -p database && touch database/database.sqlite

# تثبيت التبعيات
RUN composer install --no-dev --optimize-autoloader --no-interaction --no-scripts --ignore-platform-reqs

# ضبط الصلاحيات لمجلدات التخزين وقاعدة البيانات وسكريبت التشغيل
RUN dos2unix entrypoint.sh && chmod +x entrypoint.sh
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache /var/www/html/database
RUN chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache /var/www/html/database

EXPOSE 80

CMD ["/var/www/html/entrypoint.sh"]