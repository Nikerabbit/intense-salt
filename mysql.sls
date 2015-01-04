mariadb:
  pkg.installed:
    - names:
      - mariadb-server
      - mariadb-client

mysql:
  service:
    - running
