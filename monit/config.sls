{% from "monit/map.jinja" import monit with context %}

{{ monit.config_file }}:
  file.managed:
    - source: salt://monit/files/monitrc
    - template: jinja
    - context:
      config: {{ monit.config }}
