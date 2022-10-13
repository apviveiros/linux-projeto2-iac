#! /bin/bash

echo "Atualizando os servidores..."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget http://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
cd linux-site-dio-main
unzip main.zip
cp -R * /var/www/html/






