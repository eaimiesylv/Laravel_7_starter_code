#!/bin/bash

# Set the version of Composer to use
export COMPOSER_VERSION=1.9.0

# Install the specified version of Composer
if [ ! -f /usr/local/bin/composer-$COMPOSER_VERSION ]; then
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=$COMPOSER_VERSION
  
fi

service apache2 start

echo "laravel server is starting"
# php artisan serve

# Run any other commands passed to the container
exec "$@"

# Keep the container running
tail -f /dev/null
