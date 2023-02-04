# Extra Packages for Enterprise Linux (EPEL)
# ==========================================
# This state adds Extra Packages for Enterprise Linux (EPEL) to the target's package manager.


# Actual installation is handled by "salt-formulas/epel-formula".
include:
  - epel
