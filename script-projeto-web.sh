#!/bin/bash

echo "Iniciando script do site dio e atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Realizando instalações e downloads necessarios..."
apt install apache2 -y
apt install unzip -y

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cp -R * /linux-site-dio-main /var/www/html/

echo "Finalizado."



