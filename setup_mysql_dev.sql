#!/bin/bash
MYSQL_ROOT_USER="root"
MYSQL_ROOT_PASSWORD="root"

HBNB_MYSQL_USER="hbnb_dev"
HBNB_MYSQL_PWD="hbnb_dev_pwd"
HBNB_MYSQL_DB="hbnb_dev_db"

CREATE_DB="CREATE DATABASE IF NOT EXISTS ${HBNB_MYSQL_DB};"
CREATE_USER="CREATE USER IF NOT EXISTS ${HBNB_MYSQL_USER};"
PRIVIL="GRANT ALL PREVILAGES ON ${HBNB_MYSQL_DB}.*TO '${HBNB_MYSQL_USER}'@'localhost';"
GRANT_SELECT="GRANT ON performance_schema.* TO '${HBNB_MYSQL_USER}'@'localhost';"
FLUSH_PRIVILEGES="FLUSH PRIVILEGES;"

mysql -u${HBNB_MYSQL_USER} -p${HBNB_MYSQL_PWD} <<MYSQL_SCRIPT

${CREATE_DB}
${CREATE_USER}
${PRIVIL}
${GRANT_SELECT}
${FLUSH_PRIVILEGES}
MYSQL_SCRIPT

echo "Database and user setup completed."