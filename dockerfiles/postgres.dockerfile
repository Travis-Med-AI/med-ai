FROM postgres:9.6
COPY dockerfiles/create-multiple-databases.sh /docker-entrypoint-initdb.d/