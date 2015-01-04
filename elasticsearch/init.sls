openjdk:
  pkg.installed:
    - name: openjdk-8-jre-headless

elasticsearch package:
  pkg.installed:
    - name: elasticsearch

/etc/elasticsearch/elasticsearch.yml:
  file.managed:
    - source: salt://elasticsearch/elasticsearch.yml

/etc/default/elasticsearch:
  file.managed:
    - source: salt://elasticsearch/default

elasticsearch:
  service:
    - running
