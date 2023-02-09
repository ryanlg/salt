# Highstate for all Salt minions under Ryhino

base:
  '*':
    - os.chrony
    - formula-adapters

  'salt.*':
    - os.auto-update
    - salt.master
    - salt.cloud
