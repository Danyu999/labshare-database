FROM mysql:5.7.17

ENV MYSQL_DATABASE = 'FacilityDB'
ENV MYSQL_ALLOW_EMPTY_PASSWORD = 'yes'

COPY config.cnf /etc/mysql/conf.d
COPY FacilityDB_mysql.sql /docker-entrypoint-initdb.d
COPY defaultDB_settings.sql /docker-entrypoint-initdb.d
