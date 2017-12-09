{% from "monit/map.jinja" import monit with context %}

{{ monit.configdir }}:
  file.managed:
    - source: salt://monit/files/monitrc
    - template: jinja
    - context:
      config: {{ monit.config }}
