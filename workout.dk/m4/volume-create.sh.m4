include(`config.m4')

sudo mkdir -p VOLUMES/workout.dk/web/log/nginx
sudo chown www-data VOLUMES/workout.dk/web/log/nginx

sudo mkdir -p VOLUMES/workout.dk/web/rails-log/
sudo touch VOLUMES/workout.dk/web/rails-log/production.log
sudo chown 9999 VOLUMES/workout.dk/web/rails-log/production.log

sudo mkdir -p VOLUMES/workout.dk/db/log/

sudo mkdir -p VOLUMES/workout.dk/dbdatastore/log/
sudo mkdir -p VOLUMES/workout.dk/dbdatastore/mysql/
