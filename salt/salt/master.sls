# `salt-master`-related states
# ===========================
# These states should result in a usable Salt Master for deploying under Ryhino.

/etc/salt/master:
  file.managed:
    - source: salt://salt/files/master
    - user: saltmaster
    - group: saltmaster
    - mode: 644
    - makedirs: True
