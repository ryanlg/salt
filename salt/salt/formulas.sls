# Formulas
# ========
# Salt states that can be pulled in from external sources, usually GitHub.


# Install pygit2, required for GitFS to pull stuff from Git repos.
pygit2:
  pip.installed:
    - upgrade: true


# Copy over formulas.conf for actual configs
/etc/salt/master.d/formulas.conf:
  file.managed:
    - source: salt://salt/files/master.d/formulas.conf
    - user: saltmaster
    - group: saltmaster
    - mode: 644
    - require:
        - file: /etc/salt/master.d
