#!/bin/bash

echo "InstaCommunity Configuration 🛠 ️"

echo -n "Insert the username you will be using for the database access:"
read -r postgres_db_user

echo -n "Insert the Password you will be using for the Database"
read -r postgres_db_password

echo -n "Insert the name of the database for your Instacommunity Instance"
read -r postgres_db_database

echo -n "Insert the Database Server name"
read -r postgres_db_server

export POSTGRES_USER=$postgres_db_user; DB_USER=$postgres_db_user
export POSTGRES_PASSWORD=$postgres_db_password; DB_PASSWORD=$postgres_db_password
export POSTGRES_DATABASE=$postgres_db_database; DB_NAME=$postgres_db_database
export DB_SERVER=$postgres_db_server
export GOOGLE_APPLICATION_CREDENTIALS=$(locate service-account-file.json)

echo $POSTGRES_USER >> env.env; echo $DB_USER >> env.env
echo $POSTGRES_PASSWORD >> env.env; echo $DB_PASSWORD >> env.env
echo $POSTGRES_DATABASE >> env.env; echo $DB_NAME >> env.env
echo $DB_SERVER >> env.env
echo $GOOGLE_APPLICATION_CREDENTIALS >> env.env
