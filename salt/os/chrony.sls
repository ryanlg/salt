# Chrony
# ======
# Manage `chrony` through Salt.
#
# This is a wrapper around 'saltstack-formulas/chrony-formula', which needs to
# be pulled by salt master first before it can be referenced.


{% if salt['state.sls_exists']("chrony") %}
include:
  - chrony
{% else %}
warn-formula-not-pulled:
  test.configurable_test_state:
    - result: True
    - warnings: >
        chrony-formula is not pulled in yet. Make sure GitFS is properly set
        up, then restart the salt master.
{% endif %}
