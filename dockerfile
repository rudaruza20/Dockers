#this uses the official image as a starting point
FROM php:8.2.8-apache-bullseye

#humblebrag
MAINTAINER gorchestopher-h

#install both modules from source, you can delete the one you aren't using
RUN docker-php-ext-install mysqli pdo_mysql
