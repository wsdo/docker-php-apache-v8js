FROM webdevops/php-apache:debian-8-php7

# Install v8js php extension
COPY scripts/install-v8js.sh /install-v8js.sh
RUN sh /install-v8js.sh && rm /install-v8js.sh

# Install Composer
RUN COMPOSER_HOME=/usr/local/composer curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
