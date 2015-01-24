include(`config.m4')

sudo mkdir -p VOLUMES/web/log/nginx
sudo chown www-data VOLUMES/web/log/nginx

sudo mkdir -p VOLUMES/web/rails-log/
sudo touch VOLUMES/web/rails-log/production.log
sudo chown 9999 VOLUMES/web/rails-log/production.log

sudo mkdir -p VOLUMES/db/log/
sudo mkdir -p VOLUMES/mysql
sudo mkdir -p VOLUMES/dbdatastore/log/
