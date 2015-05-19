#!/bin/bash

sudo add-apt-repository "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main"
sudo apt-get update
sudo apt-get install wget ca-certificates
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install postgresql-9.4 
sudo apt-get install postgresql-server-dev-9.4 postgresql-contrib-9.4
sudo -u postgres psql -tAc "SELECT 1 FROM pg_roles WHERE rolname='`whoami`'" | grep -q 1 || sudo -u postgres createuser -s `whoami`

sudo apt-get --yes install python python-pip python-dev
sudo apt-get --yes install vim
sudo pip install pyyaml
sudo pip install flask
sudo pip install flask-login
sudo pip install flask-wtf
sudo pip install wtforms
sudo pip install psycopg2
sudo pip install sqlalchemy
sudo pip install flask-sqlalchemy
sudo pip install flask-security
sudo pip install -U jsonpickle

