base:
  'fqdn:*mediawiki*':
    - match: grain
    - nginx
    - hhvm
    - mysql
    - composer
    - repolibrary
    - intense
    - memcached

  'fqdn:*elasticsearch*':
    - match: grain
    - elasticsearch

  'fqdn:*salt*':
    - match: grain
    - salt
