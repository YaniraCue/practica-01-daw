#!/bin/bash
# -e: salir si hay un error y -x: mostrar comandos
set -ex

#actualizar repositorios
apt update

# actualizar paquetes
apt upgrade -y

# apache

sudo apt install apache2 -y

#php
apt install php libapache2-mod-php php-mysql -y
# hay que reiniciar apache para que tome php
systemctl restart apache2

#copiamos archivos php de prueba a  var/www/html
cp ../php/index.php /var/www/html