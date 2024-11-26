# start postgres server docker instance:
docker run -it --rm --name pserver -e POSTGRES_HOST_AUTH_METHOD=trust postgres

# in a different terminal go to the script location:
cd ~/Documents/24_25/class/data/seminars/s3

# Check Your Docker Container Name
docker ps

# copy script in docker:
docker cp queries.sql pserver:/queries.sql

# connect to postgres docker instance:
docker exec -it pserver bash

# start postgres:
psql -U postgres

# run script:
postgres=# \i /queries.sql
