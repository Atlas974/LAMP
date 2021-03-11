#!/bin/bash
# ======================================================================================================================
# Use this script to install dependencies for your project via Composer.
# ======================================================================================================================

composer require -d /var/www/html/ \
php-tmdb/api:^4 \
symfony/event-dispatcher \
guzzlehttp/guzzle \
symfony/cache \
monolog/monolog \
nyholm/psr7 \
php-http/cache-plugin:^1.7
