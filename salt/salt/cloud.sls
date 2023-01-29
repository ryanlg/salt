# `salt-cloud`-related states
# ===========================
# These states should result in a usable `salt-cloud` for deploying under Ryhino.
{% import_yaml "salt/initial_keys.map" as initial_keys %}


/etc/salt/cloud:
  file.managed:
    - source: salt://salt/files/cloud
    - user: saltmaster
    - group: saltmaster
    - mode: 644
    - makedirs: True


/etc/salt/cloud.profiles.d:
  file.recurse:
    - source: salt://salt/files/cloud.profiles.d
    - user: saltmaster
    - group: saltmaster
    - dir_mode: 755
    - file_mode: 644
    - template: jinja


/etc/salt/cloud.providers.d:
  file.recurse:
    - source: salt://salt/files/cloud.providers.d
    - user: saltmaster
    - group: saltmaster
    - dir_mode: 755
    - file_mode: 644
    - template: jinja

# Keys to log into VMs deployed by `salt-cloud` after they get cloned/created
# initially.
# Each VM template will have a different SSH key that can be used to log into
# `root`, which is to facilitate Salt doing some initial bootstrapping.
/etc/salt/cloud.initial-keys.d:
  file.directory:
    - user: saltmaster
    - group: saltmaster
    - dir_mode: 755
    - file_mode: 644


# These keys will be copied to all salt masters and are defined under "initial_keys.map".
{% for key_name in initial_keys %}
/etc/salt/cloud.initial-keys.d/{{ key_name }}:
  file.managed:
    - user: saltmaster
    - group: saltmaster
    - mode: 600
    - contents: {{ initial_keys[key_name] | yaml_encode }}
{% endfor %}
