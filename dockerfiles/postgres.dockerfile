FROM postgres

ADD dockerfiles/init.sql /docker-entrypoint-initdb.d/

