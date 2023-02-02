# Secrets Automation
# ==================
# This state will set up a 1Password Secrets Automation Connect server.
# Ryhino will use the Connect server to automate credential creation and maintanence.
#
# See https://developer.1password.com/docs/connect/ for more info.

{% set connect_server = salt['pillar.get']("secrets_automation:connect_server") %}

{{ connect_server.config_dir }}:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 600

{{ connect_server.config_dir }}/docker-compose.yaml:
  file.managed:
    - source: salt://secrets-automation/files/docker-compose.yaml
    - user: root
    - group: root
    - file_mode: 644
    - template: jinja

{{ connect_server.config_dir }}/1password-credentials.json:
  file.managed:
    - user: root
    - group: root
    - file_mode: 600
    - contents: {{ connect_server.credentials_json | yaml_encode }}
