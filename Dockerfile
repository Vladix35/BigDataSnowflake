FROM postgres:18

COPY save_database.sql /docker-entrypoint-initdb.d/

RUN chmod 755 /docker-entrypoint-initdb.d/save_database.sql