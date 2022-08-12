#!/bin/bash

echo "Atualizando o sistema..."
sudo apt-get update
sudo apt-get upgrade -y

echo "Instalando o apache2..."
sudo apt-get install apache2 -y

echo "Instalando o git..."
sudo apt-get install git -y

echo "Baixando o site para o diretório do apache..."
cd /var/www/html
sudo git clone https://github.com/denilsonbonatti/linux-site-dio.git /temp-site
sudo rm index.html
sudo mv /temp-site/* .
sudo rm -r /temp-site/

echo "Fim!"