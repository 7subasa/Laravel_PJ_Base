# PHPとApacheのイメージ
FROM php:8.2-apache

# 必須ライブラリのinstall
RUN apt-get update && apt-get install -y \
    libpq-dev \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libzip-dev \
    && docker-php-ext-install pdo pdo_mysql mysqli mbstring

# Composerのインストール
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
    && php -r "unlink('composer-setup.php');"

# PHPの拡張機能install
RUN docker-php-ext-install pdo pdo_mysql mysqli mbstring

# Apacheのmod_rewriteの有効化
RUN a2enmod rewrite

# 作業ディレクトリ
WORKDIR /var/www/html

# Laravelの公開ディレクトリをApacheのドキュメントルートに設定
ENV APACHE_DOCUMENT_ROOT /var/www/html/public

RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}/!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
