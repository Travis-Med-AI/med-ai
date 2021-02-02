FROM postgres:9.6
COPY dockerfiles/init.sql /docker-entrypoint-initdb.d/