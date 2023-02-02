base:
  "*":
    - chrony

  "salt.*":
    - saltmaster

  "opsa.*":
    - secrets-automation.prod
