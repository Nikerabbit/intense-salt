subversion:
  pkg.installed

repolibrary:
  user.present:
    - fullname: Repo Library
    - shell: /usr/sbin/nologin
    - home: /home/repolibrary
    - system: true

/var/log/repolibrary:
  file.managed:
    - user: repolibrary

/usr/local/bin/repolibrary-run:
  file.managed:
    - source: salt://repolibrary/run
    - mode: 755
  cron.present:
    - user: repolibrary
    - minute: '*/5'
    - identifier: repolibrary-run

/usr/local/bin/repolibrary-schedule:
  file.managed:
    - source: salt://repolibrary/schedule
    - mode: 755
  cron.present:
    - user: repolibrary
    - minute: 42
    - identifier: repolibrary-schedule
