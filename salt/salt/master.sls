# `salt-master`-related states
# ===========================
# These states should result in a usable Salt Master for deploying under Ryhino.


include:
  - salt.formulas


/etc/salt/master:
  file.managed:
    - source: salt://salt/files/master
    - user: saltmaster
    - group: saltmaster
    - mode: 644
    - makedirs: True


# This directory should be created by Salt automatically, but just in case.
/etc/salt/master.d:
  file.directory:
    - user: saltmaster
    - group: saltmaster
    - dir_mode: 755
    - file_mode: 644


# Open salt-master ports to public
{% if grains['os'] == 'Rocky' %}
public:
  firewalld.present:
    - services:
        - salt-master
{% endif %}
