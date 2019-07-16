# mariadb
Mariadb Dockerfile with engine connect ...

If you want to enable/install engine connect you have to run `INSTALL SONAME 'ha_connect';` after mariadb start.
No restart is needed.

## How to do it in gitlab ci
```
echo "SELECT 'OK';" | mysql --user=root --password="${MYSQL_ROOT_PASSWORD}" --host="${MYSQL_HOSTNAME}"` #check if db is ok
echo "INSTALL SONAME 'ha_connect';" | mysql --user=root --password="${MYSQL_ROOT_PASSWORD}" --host="${MYSQL_HOSTNAME}" #install plugin
```
