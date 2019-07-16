FROM mariadb:10.3

RUN apt-get update && apt-get install -y mariadb-plugin-connect

RUN echo "[mysqld]" > /etc/mysql/conf.d/z93-logio-plugin-dir.cnf
RUN echo "plugin_dir=/usr/lib/mysql/plugin" >> /etc/mysql/conf.d/z93-logio-plugin-dir.cnf
