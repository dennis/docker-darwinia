include(`config.m4')

web:
    build: web
    ports:
        - "3000:80"
    links:
        - "db"
    volumes:
        - VOLUMES/log/:/var/log
        - VOLUMES/rails-log/:/home/app/workout_website/log

db:
    image: mysql
    ports:
        - "3306"
    links:
        - "dbdatastore"
    volumes_from:
        - "dbdatastore"
    environment:
        MYSQL_ROOT_PASSWORD: mysecretpassword
        MYSQL_USER: workoutdk
        MYSQL_PASSWORD: workoutdk
        MYSQL_DATABASE: workoutdk

dbdatastore:
    image: busybox
    volumes: 
        - VOLUMES/mysql:/var/lib/mysql
