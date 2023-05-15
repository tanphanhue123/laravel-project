# Set master image
FROM php:7.2-fpm-alpine

# Set working directory
WORKDIR /var/www/html

# Install PHP Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy existing application directory
RUN chown -R www-data:www-data /var/www/html \
    && chmod 775 -R /var/www/html \
    && chmod o+w ./storage/ -R 

USER www-data
