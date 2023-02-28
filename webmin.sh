#!/bin/bash
# -*- ENCODING: UTF-8 -*-
# Este guión nos permitirá instalar de manera automática la última ver sión
# de Webmin en nuestro sistema Ubuntu .

# La primero, update + upgrade

    clear
    echo "Ejecuto update y upgrade"
    sleep 5
    sudo apt -y update

# Unas herramientas ::

    sudo apt -y install wget
    sudo apt -y install git

# No sé que hace esto ::

    sudo apt install -y gnupg software-properties-common

# Añadimos la clave pública ::

    wget -q http://www.webmin.com/jcameron-key.asc -O- | sudo apt-key add -

# Añadimos webmin al repositorio ::

    sudo add-apt-repository "deb [arch=amd64] http://download.webmin.com/download/repository sarge contrib"

# Instalamos webmin

    sudo apt -y install webmin

# Activamos webmin

    systemctl status webmin