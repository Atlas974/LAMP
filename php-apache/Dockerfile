FROM php:apache

RUN apt-get update && apt-get install -y \
                        git \
                        unzip \
        && docker-php-ext-install mysqli \
        && docker-php-ext-enable mysqli

# Edit ./scripts/composer-require.sh
# and uncomment the block below to install dependencies for your project via Composer.
# ======================================================================================================================
#COPY ./scripts/composer-installer.sh /srv/install/composer/
#COPY ./scripts/composer-require.sh /srv/install/composer/
#
#RUN /srv/install/seriespicker/composer-installer.sh
#RUN /srv/install/seriespicker/composer-require.sh
# ======================================================================================================================
