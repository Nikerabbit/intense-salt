python-git:
  pkg.installed

/etc/salt/master.d/intense-git.conf:
  file.managed:
    - source: salt://salt/fileserver
