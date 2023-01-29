# Chrony
# ======
# Config Chrony so that it uses Ryhino's internal NTP server.
# This relies on github.com/saltstack-formulas/chrony-formula


chrony:
  ntpservers:
    # In Ryhino, the intranet NTP server is provided conveniently by pfSense.
    # This address should be resolved automaically by pfSesne to itself no
    # matter the subnet.
    - "pfsense.bedrock.ryanl.io"
