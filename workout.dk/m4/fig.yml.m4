include(`config.m4')

web:
    build: web
    ports:
        - "3000:80"
    links:
        - "db"
    environment:
        VIRTUAL_HOST: "workout.dk"
    volumes:
        - VOLUMES/web/log/:/var/log
        - VOLUMES/web/rails-log/:/home/app/workout_website/log

db:
    image: mysql
    ports:
        - "3306"
    links:
        - "dbdatastore"
    volumes_from:
        - "dbdatastore"
    volumes:
        - VOLUMES/db/log/:/var/log
    environment:
        MYSQL_ROOT_PASSWORD: mysecretpassword
        MYSQL_USER: workoutdk
        MYSQL_PASSWORD: workoutdk
        MYSQL_DATABASE: workoutdk

dbdatastore:
    image: busybox
    volumes: 
        - VOLUMES/dbdatastore/mysql:/var/lib/mysql
        - VOLUMES/dbdatastore/log/:/var/log
