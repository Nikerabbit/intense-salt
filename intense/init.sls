/usr/local/bin/intense-run:
  file.managed:
    - source: salt://intense/run
    - mode: 755
  cron.present:
    - identifier: intense-run
    - user: www-data
    - minute: '*/1'
