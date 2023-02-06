# Docker
# ======
# This state installs and manages Docker on the target.
# Actual functionality of this state is implemented by "salt-formulas/docker-formula".


include:
  - docker
{# "docker-formula" requires some packages in EPEL when installing Docker #}
{% if grains['os_family'] == "RedHat" %}
  - pkgrepos.epel
{% endif %}
