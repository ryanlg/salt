# Highstate for all Salt minions under Ryhino

base:
    'salt.*':
        - os.auto-update
