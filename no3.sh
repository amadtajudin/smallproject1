#!/bin/bash


jwb="Y"
read -p "Apakah kamu yakin akan menginstall webserver ? (Y/n) " pil;
if [ $pil == $jwb ];
  then
	echo "get ready for install"
	sudo apt-get update
	echo "=========================================="
	echo "Melakukan Installasi Webserver"
	echo "=========================================="
	sudo apt-get install apache2 php php-mysql
	echo "=========================================="
	echo "Melakukan Installasi Database Server"
	echo "=========================================="
	sudo apt-get install mysql-server
	echo "=========================================="
	echo "Yay, Instalasi selesai"
	echo "=========================================="
	exit 0
  else
	echo "Instalasi dibatalkan,mungkin lain kali"
	exit 1
fi
