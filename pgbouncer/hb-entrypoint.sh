#!/bin/bash

# set default auth_type
AUTH_TYPE="${AUTH_TYPE:-md5}"

# write auth_file /etc/pgbouncer/users.txt
mkdir /etc/pgbouncer
echo \"$DB_USER\" \"$DB_PASSWORD\" > /etc/pgbouncer/users.txt

# run parent entry point
./entrypoint.sh
