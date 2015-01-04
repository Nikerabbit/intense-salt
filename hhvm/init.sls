hhvm packages:
  pkg.installed:
    - names:
      - hhvm
      - hhvm-fss
      - hhvm-luasandbox
      - hhvm-wikidiff2

/etc/init/hhvm.conf:
  file.managed:
    - source: salt://hhvm/upstart

/etc/hhvm/server.ini:
  file.managed:
    - source: salt://hhvm/server.ini
    - listen_in:
      - service: hhvm

hhvm:
  service.running
