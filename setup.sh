#!/bin/bash

sudo apt update -y
sudo apt upgrade -y

sudo apt install unzip php composer nano rabbitmq-server net-tools openssh-server wget -y

sudo systemctl enable ssh
sudo systemctl start ssh

wget https://github.com/MattToegel/IT490/archive/refs/heads/master.zip -O master.zip
unzip master.zip


cd IT490-master


sed -i 's/"type": *"[^"]*"/"type": "something-fun"/' composer.json


composer update
composer install

php RabbitMQServerSample.php
