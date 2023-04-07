FROM php:8.1-cli

# Install any required dependencies
RUN apt-get update && apt-get install -y \
        git \
        zip \
        unzip

# Install any required PHP extensions
RUN docker-php-ext-install pdo_mysql

WORKDIR /app