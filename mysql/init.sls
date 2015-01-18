mariadb:
  pkg.installed:
    - names:
      - mariadb-server
      - mariadb-client

mysql:
  service:
    - running

/etc/mysql/my.cnf:
  file.managed:
    - source: salt://mysql/my.cnf