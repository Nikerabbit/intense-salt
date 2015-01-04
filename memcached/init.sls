memcached package:
  pkg.installed:
    - name: memcached

/etc/memcached.conf:
  file.managed:
    - source: salt://memcached/memcached.conf
