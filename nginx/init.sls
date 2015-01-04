nginx package:
  pkg.installed:
    - name: nginx

/etc/nginx/sites-enabled/default:
  file.absent

/etc/nginx/nginx.conf:
  file.managed:
    - source: salt://nginx/nginx.conf

/etc/nginx/fastcgi.conf:
  file.managed:
    - source: salt://nginx/fastcgi.conf

/etc/nginx/mime.types:
  file.managed:
    - source: salt://nginx/mime.types

/etc/nginx/sites-enabled/intense:
  file.managed:
    - source: salt://nginx/intense

nginx:
  service:
    - running
