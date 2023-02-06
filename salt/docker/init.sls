# Docker
# ======
# This state installs and manages Docker on the target.
# Actual functionality of this state is implemented by "salt-formulas/docker-formula".
# This is just a wrapper around the upstream formula to bridge some incompatibilities.


{% if salt['state.sls_exists']("docker") %}
include:
{# @linear(RH-15): "docker-formula" requires some packages in EPEL #}
{% if grains['os_family'] == "RedHat" %}
  - pkgrepos.epel
{% endif %}
  - docker
{% else %}
warn-formula-not-pulled:
  test.configurable_test_state:
    - result: True
    - warnings: >
        docker-formula is not pulled in yet. Make sure GitFS is properly set
        up, then restart the salt master.
{% endif %}
