#!/bin/sh
docker run \
--detach \
--name some-mariadb \
--env MARIADB_USER=example-user \
--env MARIADBP_PASSWORD=my_cool_secret \
--env MARIADB_ROOT_PASSWORD=my-secret-pw \
--env MARIADB_DATABASE=wordpress \
-p 3306:3306 \
-v $PWD/mariadb-data:/var/lib/mysql \
mariadb:latest
