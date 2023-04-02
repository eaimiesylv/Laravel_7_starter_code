# Base Image
FROM php:7.4-apache
# Install dependencies
RUN apt-get update && \
    apt-get install -y \
        libmcrypt-dev \
        default-mysql-client \
        libzip-dev \
        iputils-ping \
        zip \
        unzip \
        git && \
    docker-php-ext-install pdo_mysql && \
    docker-php-ext-install zip && \
    pecl install mcrypt-1.0.3 && \
    docker-php-ext-enable mcrypt

ENV APACHE_DOCUMENT_ROOT /var/www/html/public
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

RUN sed -ri -e "s!/var/www/html!${APACHE_DOCUMENT_ROOT}!g" /etc/apache2/sites-available/*.conf
RUN sed -ri -e "s!/var/www/!${APACHE_DOCUMENT_ROOT}!g" /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

ENV COMPOSER_MEMORY_LIMIT=-1
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=1.9.0

# Create Entry Point
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

# Expose port 8000
EXPOSE 80
RUN a2enmod rewrite
RUN service apache2 restart
